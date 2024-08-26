#==================================================================================================================================
#
#          FILE:  usingPool.py
#
#         USAGE:  python ./usingPool.py <destination path> <libraryName>
#
#   DESCRIPTION:  generate library for all architectures and lipo in to single unified library as libKonyUnifiedBindings.a
#				  and copy it in destination folder and create folder as libraryName in JSLibs and move library into that folder
#
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  libraryName is <framework><sdk>v<version>-[... if any]
#        AUTHOR:  Hareesh.Veligeti Kh2032
#       COMPANY:  Kony Labs
#       VERSION:  1.0
#       CREATED:  29/01/2016 10:31:01 AM IST
#      REVISION:  ---
#==================================================================================================================================

import os, multiprocessing, sys, subprocess, shutil, argparse
from functools import partial
LIBRARY_NAME = "libKonyUnifiedBindings.a"
DEVICE_SDK_PATH = "/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk"
SIMULATOR_SDK_PATH = "/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk"

#start
class myProcess():
    def __init__(self, type, arch):
        self.type = type
        self.arch = arch
        self.cwd = os.getcwd()
#end

includeDirs = [" "]
sourceFiles = []
xcodePath = None
archs = []
deviceArchs = ['armv7', 'armv7s', 'arm64']
simulatorArchs = ['i386', 'x86_64']
simulatorSources = []
deviceSources = []
thirdpartySources = []
flags = []
processList = []
"""
    --> Giving '-c' flag to 'clang' compile source files(.m) to object files(.o)
    --> clang copies/generates all object file(s) in the current working directory.
    --> Use extra '../' for every path because as metioned above to differntiate files generated for each architecture, before exectuting command we are creating different directory for each architecture and moving in to those directories.
"""
def getCommandAsString(command, arch, frameworkSearchPath, includeDirs, sourceFiles, flags):
    str = ""
    str = command +" -arch "+arch+" -isysroot "+frameworkSearchPath+" -I ".join(includeDirs)+" -c "+" ".join(sourceFiles)+" "+" ".join(flags)+" -F ../../nativebinding/thirdparty/**"
    # print str
    return str

def getPathsForAllowedSourcesInGivenPath(path):
    filelist = []
    paths = []
    retval = os.getcwd()
    allowedFileExtensions = ['.c', '.cpp', '.cc', '.cxx', '.c++', '.C', '.m', '.mm']
    if os.path.exists(path):
        for root, folders, files in os.walk(path):
            paths.append(root)
            for i in files:
                if os.path.splitext(i)[1] in allowedFileExtensions:
                    filelist.append(os.path.join(root, i))
    else:
        print("'{0}' No file or folder available".format(path))
    return (filelist, paths);

def generateLibs(type, arch, xcodePath, includeDirs, dsp, ssp, ds, ss, tp, f,cwd):
    apath = os.path.join(cwd, arch)
    if not os.path.exists(apath): # create dir with name as arch if not exist
        os.mkdir(apath)
    os.chdir(apath)
    err = " 2>../'{0}'.txt".format(arch)#redirect error to ../<archName.txt> file
    tpsources = []
    frameworkSearchPath = None
    for i in tp:
        temp = getPathsForAllowedSourcesInGivenPath(i)
        tpsources.extend(temp[0])
        includeDirs.extend(temp[1])
    if type == 'device':
        tpsources.extend(ds)
        frameworkSearchPath = xcodePath.decode() + dsp
        os.system(getCommandAsString('clang', arch, frameworkSearchPath, includeDirs, tpsources, f) + err)

    if type == 'simulator':
        tpsources.extend(ss)
        frameworkSearchPath = xcodePath.decode() + ssp
        os.system(getCommandAsString('clang', arch, frameworkSearchPath, includeDirs, tpsources, f) + err)
    os.system("libtool -static  ./*.o -o ./KonyLib%s.a 2>>../%s.txt" %(arch, arch)) #creating library

#---------->executions starts from here<----------
parser = argparse.ArgumentParser()
parser.add_argument("-a", "--arch", action="append", nargs='+', dest="archs", metavar='<arch list>',
                                             help='build libraries for list of architecture')
parser.add_argument("-dfwsp", "--DFWSearchPath", dest="dsp", metavar='<Device FW search path>',
                                             help='Device FW search path excluding xcode path')
parser.add_argument("-sfwsp", "--SFWSearchPath", dest="ssp", metavar='<Simulator FW search path>',
                                             help='Simulator FW search path excluding xcode path')
parser.add_argument("-i",  "--include", action="append", nargs='+', dest="include", metavar='<include directory>',
                                             help='Additional SDKs')
parser.add_argument('-f', '--flags', action="append", nargs='+', dest="flags", metavar='<Flags>',
                                             help='any additional flags other than -c to include')
parser.add_argument('-xpath', '--xcode-path', dest='xpath',
                                             help='xcode path is used for framework search path')
parser.add_argument('-ds', '--device-sources', action='append', dest='ds',  nargs='+',metavar='<device sources>',
                                             help="Source code location(s) of Device SDKs")
parser.add_argument('-ss', '--simulator-sources', action='append', nargs='+', dest='ss', metavar='<simulator sources>',
                                             help="Source code location(s) of Simulator SDKs")
parser.add_argument('-tp', '--third-party', action='append', nargs='+', dest='tp', metavar='<Third-party sources>',
                                             help="Source code location(s) of third-party SDKs")
parser.add_argument('-dest', dest='dest', metavar='<Destination folder of library>')
args = parser.parse_args()
# print args

def cleanUp():
    for i in processList:
        os.system("rm -rf "+ i.arch +" "+i.arch+".txt")

try:
    if args.archs:
        for i in args.archs:
            archs.extend(i)
    if args.xpath:
        xcodePath = args.xpath
    else:
        xcodePath,err = subprocess.Popen(["xcode-select", "-p"], stdout=subprocess.PIPE, close_fds=True).communicate()
        xcodePath = xcodePath.rstrip()
        if err:
            raise Exception('Xcode path not configured!!!')

    if args.dsp:
        DEVICE_SDK_PATH = args.dsp

    if args.ssp:
        SIMULATOR_SDK_PATH = args.ssp

    if args.include:
        for i in args.include:
            includeDirs.extend(i)
    if args.ss:
        for i in args.ss:
            simulatorSources.extend(i)

    if args.ds:
        for i in args.ds:
            deviceSources.extend(i)
    if args.tp:
        for i in args.tp:
                # filesNpaths = getPathsForAllowedSourcesInGivenPath(j)
                thirdpartySources.extend(i)
                # includeDirs.extend(filesNpaths[1])
    if args.flags:
        for i in args.flags:
            flags.extend([j.replace("\"", "") for j in i])
    for i in archs:
        if i in deviceArchs:
            processList.append(myProcess("device", i))
        elif i in simulatorArchs:
            processList.append(myProcess("simulator", i))
        else:
            print('Invalid architecture!!!')
    params = [(i.type, i.arch) for i in processList]
    generateLibsFromTypeAndArch = partial(generateLibs, xcodePath=xcodePath, dsp=DEVICE_SDK_PATH, ssp=SIMULATOR_SDK_PATH, includeDirs=includeDirs, ds=deviceSources, ss=simulatorSources, tp=thirdpartySources, f=flags, cwd=os.getcwd())
    def generateLibsFromTypeAndArchWrapper(type_arch):
        return generateLibsFromTypeAndArch(type_arch[0], type_arch[1])
    p = multiprocessing.Pool(5)
    p.map(generateLibsFromTypeAndArchWrapper, params)
    p.close()
    p.join()
    str = ""
    os.system("rm -rf ./err.txt")
    for i in processList:
        if os.path.getsize("./%s.txt"%(i.arch)) == 0:
            str += "./"+i.arch+"/"+"KonyLib'{0}'.a".format(i.arch)+" "
        else:
            os.system("cat '{0}'.txt >> ./err.txt".format(i.arch))
            raise Exception('Unkown error')
    libsrc = args.dest
    os.system("lipo -create "+str+" -output "+libsrc+"/"+LIBRARY_NAME)
except KeyboardInterrupt:
    os.system("echo 'exit due to KeyboardInterrupt' >> ./err.txt")
except:
    os.system("echo 'exit due to Unkown error' >> ./err.txt")
finally:
#clean up all folders that are created as part of this script.
    cleanUp()
