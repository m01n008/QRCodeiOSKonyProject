'Thirdparty Perl Helper will move fwks, generate an intermediate json file and writes loader.m'
import argparse
import os
import json
import zipfile
import shutil
import fnmatch

COMMON_TARGET_GROUP_PATH = '..'
TP_DIR = 'nativebinding/TP'
FWKS_DIR = 'nativebinding/FWKS'
NFIAllLoader_PATH = 'NFILoader/NFIAllLoader.m'
IGNORE_LIST = ["NFILoader.framework", "NFICore.framework", "NFIUtility.framework","NFILoader.xcframework", "NFICore.xcframework", "NFIUtility.xcframework"]
VIDEO_WIDGET_FWKS_PATH = '../preBundledSSM/video/precompiled-fwks/'

class TPPerlHelper:
    def __init__(self, nfiVersion, path, enableVideoWidget, debug, basePathForProjectAsset):
        self.nfiVersion = nfiVersion
        self.path = path
        self.enableVideoWidget = enableVideoWidget
        self.videoWidgetFWKSPath = os.path.join(VIDEO_WIDGET_FWKS_PATH, nfiVersion)
        # print "Video Widget Frameworks Source Path : ", self.videoWidgetFWKSPath
        self.debug = debug
        self.basePathForProjectAsset = basePathForProjectAsset
        self.loader_list = set()
        self.unique_nfi_list = set()
        self.json_obj = {
            "TP": [],
            "NFIs": [],
            "SOURCEs": []
        }
    def get_unique_thirdparty_fwks(self, path):
        'this will always gives set of unique frameworks'
        return_list = []
        for i in os.walk(path):
            for j in i[1]:
                if j.endswith(".framework") and (i[0]).find(".xcframework")!=-1:
                            continue
                if j.endswith(".framework") or j.endswith(".xcframework"):
                    return_list.append(os.path.join(i[0], j))
        return return_list

    def optionalVideoWidgetAdding(self, enableVideoWidget):
        'Add video widget if enableVideoWidget is true'
        if enableVideoWidget :
            VIDEO_WIDGET_FWKS = os.listdir(self.videoWidgetFWKSPath)
            for fwk in VIDEO_WIDGET_FWKS:
                if fwk.startswith("NFI") and (fwk.endswith(".framework") or fwk.endswith(".xcframework")):
                    fwk_path = os.path.join(self.videoWidgetFWKSPath, fwk)
                    if fwk not in self.loader_list and fwk not in IGNORE_LIST:
                        self.copyFWK(fwk_path, os.path.join(self.basePathForProjectAsset,FWKS_DIR, fwk))
                        self.loader_list.add(fwk)
                        self.json_obj["NFIs"].append({
                            "NFI_NAME": fwk,
                            "PATH": os.path.join('nativebinding/FWKS', fwk)
                        })
                elif fwk == 'thirdparty':
                    tp_path = os.path.join(self.videoWidgetFWKSPath, 'thirdparty')
                    unique_thirdparty_fwks = self.get_unique_thirdparty_fwks(tp_path)
                    for i in set(unique_thirdparty_fwks):
                        fwk_name = i.split('/')[-1]
                        if fwk_name not in IGNORE_LIST:
                            self.copyFWK(i, os.path.join(self.basePathForProjectAsset,TP_DIR, fwk_name))
                            self.json_obj["TP"].append(os.path.join('nativebinding/TP', fwk_name))
                elif fwk == 'sources' and self.debug:
                    path = os.path.join(self.videoWidgetFWKSPath, 'sources')
                    nfi_sources = os.listdir(path)
                    for nfi_target in nfi_sources:
                        if nfi_target in IGNORE_LIST or nfi_target in self.unique_nfi_list:
                            continue
                        nfi_target_path_simulator = os.path.join(path, nfi_target, nfi_target, 'simulator')
                        nfi_target_path_device = os.path.join(path, nfi_target, nfi_target, 'device')
                        if os.path.exists(nfi_target_path_device) and os.path.exists(nfi_target_path_simulator):
                            self.unique_nfi_list.add(nfi_target)
                            renamed_nfi_target = "NFI%s" % nfi_target
                            self.copyFWK(os.path.join(nfi_target_path_device), os.path.join(COMMON_TARGET_GROUP_PATH, renamed_nfi_target, 'device'))
                            self.copyFWK(os.path.join(nfi_target_path_simulator), os.path.join(COMMON_TARGET_GROUP_PATH, renamed_nfi_target, 'simulator'))
                            if os.path.exists(os.path.join(path, nfi_target, nfi_target, "Info.plist")):
                                shutil.copy(os.path.join(path, nfi_target, nfi_target, "Info.plist"), os.path.join(COMMON_TARGET_GROUP_PATH, renamed_nfi_target))
                            compiled_sources_device = fnmatch.filter(os.listdir(nfi_target_path_device), '*.m')
                            compiled_sources_simulator = fnmatch.filter(os.listdir(nfi_target_path_simulator), '*.m')
                            _obj = {
                                "device": {
                                    "root": os.path.join(renamed_nfi_target, 'device'),
                                    "headers": [
                                        "NFI%s.h" % nfi_target,
                                        "NFI%sLoader.h" % nfi_target
                                    ],
                                    "compiled_sources": compiled_sources_device
                                },
                                "simulator": {
                                    "root": os.path.join(renamed_nfi_target, 'simulator'),
                                    "headers": [
                                        "NFI%s.h" % nfi_target,
                                        "NFI%sLoader.h" % nfi_target
                                    ],
                                    "compiled_sources": compiled_sources_simulator
                                },
                                "nfi_name": renamed_nfi_target
                            }
                            nfi_target_path_thirdparty = os.path.join(path, nfi_target, nfi_target, 'thirdparty')
                            if os.path.exists(nfi_target_path_thirdparty):
                                # thirdparty exists
                                _obj["thirdparty"] = {
                                    "header_search_paths": [],
                                    "link_libs": [],
                                    "compiled_sources": [],
                                    "compiled_sources_headers": []
                                }
                            self.json_obj["SOURCEs"].append(_obj)
                        
        return self
    def generate_loader(self):
        custom_imports = ''
        loadAllModules = ''
        extractStructArgument = ''
        setStructReturnValue = ''
#       print "Generating Loader",self.loader_list
        elif_flag = ''
        for lib in self.loader_list:
            if lib.endswith(".framework"):
                library_name = lib.split('.framework')[0]
            elif lib.endswith(".xcframework"):
                library_name = lib.split('.xcframework')[0]
            custom_imports += '\n#import <%s/%sLoader.h>' %(library_name, library_name)
            loadAllModules += '\n\tload%sModules(context);' % library_name
            extractStructArgument += '\n\t%sif(extract%sStructArgument(type, invocation, index, context)){\n\t\treturn extract%sStructArgument(type, invocation, index, context); \n\t}' % (elif_flag, library_name, library_name)
            setStructReturnValue += '\n\t%sif(set%sStructReturnValue(type, value, invocation)){\n\t\treturn;\n\t}' % (elif_flag, library_name)
            elif_flag = 'else '
        common_stub = '''// Generated by Kony Inc
// Don't modify the file or any of it's part/s
// Copyright Kony Inc. 2018

#import "NFIAllLoader.h"%s

// loadAllModules stub
void loadAllModules(JSContext *context){%s
}

// extractStructArgument stub
JSValue* extractStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context){%s
    return nil;
}

// setStructReturnValue stub
void setStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation){%s
}'''%(custom_imports, loadAllModules, extractStructArgument, setStructReturnValue)
        with open(NFIAllLoader_PATH, "w") as _fp:
            _fp.write(common_stub)
        return self

    def copyFWK(self, src, dest):
        'Helper function for copying framework'
        if not os.path.exists(dest):
            shutil.copytree(src=src, dst=dest)

    def scan(self, selfsufficientmodules_path = 'selfsufficientmodules'):
        'This will scan the selfsufficientmodules for all the frameworks be it 3rd party or native'
        selfsufficientmodules_path = os.path.abspath(os.path.join(self.path, selfsufficientmodules_path))
        if os.path.exists(selfsufficientmodules_path):
            all_nfi = os.listdir(selfsufficientmodules_path)
            for nfi in all_nfi:
                if nfi.endswith(".zip"):
                    print("Unzipping ", nfi)
                    # nfi found
                    # unzip
                    nfi_unzip_folder_name = nfi.split(".zip")[0]
                    zip_ref = zipfile.ZipFile(os.path.join(selfsufficientmodules_path, nfi), 'r')
                    zip_ref.extractall(selfsufficientmodules_path)
                    zip_ref.close()
                    nfi_fwks = os.listdir(os.path.join(selfsufficientmodules_path, nfi_unzip_folder_name))
                    for fwk in nfi_fwks:
                        # get inside it
                        if fwk.endswith(".framework") and fwk.find(".xcframework")!=-1:
                            continue
                        if fwk.startswith("NFI") and (fwk.endswith(".framework") or fwk.endswith(".xcframework")):
                            fwk_path = os.path.join(selfsufficientmodules_path, nfi_unzip_folder_name, fwk)
                            # read all the NFIFWKs and add it it a set add it to a json with full path to that FWK
                            if fwk not in self.loader_list and fwk not in IGNORE_LIST:
                                self.copyFWK(fwk_path, os.path.join(self.basePathForProjectAsset,FWKS_DIR, fwk))
                                self.loader_list.add(fwk)
                                self.json_obj["NFIs"].append({
                                    "NFI_NAME": fwk,
                                    "PATH": os.path.join('nativebinding/FWKS', fwk)
                                })
                        elif fwk == 'thirdparty':
                            tp_path = os.path.join(selfsufficientmodules_path, nfi_unzip_folder_name, 'thirdparty')
                            unique_thirdparty_fwks = self.get_unique_thirdparty_fwks(tp_path)
                            for i in set(unique_thirdparty_fwks):
                                fwk_name = i.split('/')[-1]
                                if fwk_name not in IGNORE_LIST:
                                    self.copyFWK(i, os.path.join(self.basePathForProjectAsset,TP_DIR, fwk_name))
                                    self.json_obj["TP"].append(os.path.join('nativebinding/TP', fwk_name))
                        elif fwk == 'sources' and self.debug:
                            path = os.path.join(selfsufficientmodules_path, nfi_unzip_folder_name, 'sources')
                            nfi_sources = os.listdir(path)
                            for nfi_target in nfi_sources:
                                if nfi_target in IGNORE_LIST or nfi_target in self.unique_nfi_list:
                                    continue
                                nfi_target_path_simulator = os.path.join(path, nfi_target, nfi_target, 'simulator')
                                nfi_target_path_device = os.path.join(path, nfi_target, nfi_target, 'device')
                                if os.path.exists(nfi_target_path_device) and os.path.exists(nfi_target_path_simulator):
                                    self.unique_nfi_list.add(nfi_target)
                                    renamed_nfi_target = "NFI%s" % nfi_target
                                    self.copyFWK(os.path.join(nfi_target_path_device), os.path.join(COMMON_TARGET_GROUP_PATH, renamed_nfi_target, 'device'))
                                    self.copyFWK(os.path.join(nfi_target_path_simulator), os.path.join(COMMON_TARGET_GROUP_PATH, renamed_nfi_target, 'simulator'))
                                    if os.path.exists(os.path.join(path, nfi_target, nfi_target, "Info.plist")):
                                        shutil.copy(os.path.join(path, nfi_target, nfi_target, "Info.plist"), os.path.join(COMMON_TARGET_GROUP_PATH, renamed_nfi_target))
                                    compiled_sources_device = fnmatch.filter(os.listdir(nfi_target_path_device), '*.m')
                                    compiled_sources_simulator = fnmatch.filter(os.listdir(nfi_target_path_simulator), '*.m')
                                    _obj = {
                                        "device": {
                                            "root": os.path.join(renamed_nfi_target, 'device'),
                                            "headers": [
                                                "NFI%s.h" % nfi_target,
                                                "NFI%sLoader.h" % nfi_target
                                            ],
                                            "compiled_sources": compiled_sources_device
                                        },
                                        "simulator": {
                                            "root": os.path.join(renamed_nfi_target, 'simulator'),
                                            "headers": [
                                                "NFI%s.h" % nfi_target,
                                                "NFI%sLoader.h" % nfi_target
                                            ],
                                            "compiled_sources": compiled_sources_simulator
                                        },
                                        "nfi_name": renamed_nfi_target
                                    }
                                    nfi_target_path_thirdparty = os.path.join(path, nfi_target, nfi_target, 'thirdparty')
                                    if os.path.exists(nfi_target_path_thirdparty):
                                        # thirdparty exists
                                        _obj["thirdparty"] = {
                                            "header_search_paths": [],
                                            "link_libs": [],
                                            "compiled_sources": [],
                                            "compiled_sources_headers": []
                                        }
                                    self.json_obj["SOURCEs"].append(_obj)
        return self
    def commit(self, save_path = 'selfsufficientmodules', json_file_name = "cnfi.json"):
        'this will finilize and save the dict dump as json utf-8 encoding'
        with open(os.path.join(self.path, save_path, json_file_name), 'w') as _fp:
            json.dump(self.json_obj, _fp, indent=2)

if __name__ == "__main__":
    ARG = argparse.ArgumentParser()
    ARG.add_argument("-nfiVersion", required=True, help="NFIVersion in application.properties of KAR file")
    ARG.add_argument("-path", required=True, help="path to kar file")
    ARG.add_argument("--enableVideoWidget", action='store_true', default=False)
    ARG.add_argument("--debug", action='store_true', default=False)
    ARG.add_argument("-basePathForProjectAsset", default="..")
    args = ARG.parse_args()
    # Builder pattern
    NFIAllLoader_PATH = os.path.join(args.basePathForProjectAsset, NFIAllLoader_PATH)
    TPPerlHelper(args.nfiVersion, args.path, args.enableVideoWidget, args.debug,args.basePathForProjectAsset).scan().optionalVideoWidgetAdding(args.enableVideoWidget).generate_loader().commit()
