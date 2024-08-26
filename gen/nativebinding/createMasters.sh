#!/bin/bash
CONFIGFILE="./nativebinding/mastersConf.conf"

eval $(sed '/:/!d;/^ *#/d;s/:/ /;' < "$CONFIGFILE" | while read -r key val
do
str="$key='$val'"
echo "$str"
done)

#echo $SSMPath
#echo $targetType
#echo $preBundledSSMModules
targetType=$1;
shift
i=1;
ssmModuleList='';

input_headers="/input_headers ";
classes="/"$targetType"/classes ";
protocols="/"$targetType"/protocols ";
parts="/"$targetType"/parts ";
parts_sa="/"$targetType"/parts_sa ";
parts_sr="/"$targetType"/parts_sr ";
modules="/"$targetType"/*.* ";

input_header_list='';
classes_list='';
protocols_list='';
parts_list='';
parts_sa_list='';
parts_sr_list=''
module_list='';

frameworks_list='';
framework_separator=',';
libraryName=''
filename='/metadata.properties'

# Read all files from Self Sufficient Modules imported by user to ssmModuleList
while test "$1"
do
    if [ $i == 1 ]; then
        enableMobileFirstAPIs=$1
    elif [ $i == 2 ]; then
        enableVideoWidget=$1
    else
        ssmModuleList=$ssmModuleList" "$1
    fi
    shift
    i=`expr $i + 1`
done

#Adds given modules to masters list of temp files
createMastersListForModulesInPath(){
    moduleArr=("${!1}")
    path=$2
    includedModulesList=''
    for i in ${moduleArr[@]};
    do
    preBundledModuleName=$i

    input_header_list=$input_header_list$path$preBundledModuleName$input_headers
    classes_list=$classes_list$path$preBundledModuleName$classes
    protocols_list=$protocols_list$path$preBundledModuleName$protocols
    parts_list=$parts_list$path$preBundledModuleName$parts
    parts_sa_list=$parts_sa_list$path$preBundledModuleName$parts_sa
    parts_sr_list=$parts_sr_list$path$preBundledModuleName$parts_sr
    module_list=$module_list$path$preBundledModuleName$modules

    # Read the metadata file for the module and add all dependent frameworks to the frameworks_list
    while IFS='' read -r line;do
    if [[ $line == "iOSFrameworks"* ]] ; then
        IFS='=' read -ra NAMES <<< "$line"
        frameworks_list=$frameworks_list${NAMES[1]}$framework_separator
    fi
    done < "$path$preBundledModuleName$filename"

    done

}


#Read all preBundled SSM if enableMobileFirstAPIs is set
if [ $enableMobileFirstAPIs == 1 ]; then
    createMastersListForModulesInPath preBundledSSMModules $preBundledSSMPath
fi


#Read all video SSM if enableVideoWidget is set
if [ $enableVideoWidget == 1 ]; then
    createMastersListForModulesInPath videoWidgetSSMModules $videoWidgetSSMPath
fi

#Read all SSM
if [ ! -z "$ssmModuleList" -a "$ssmModuleList" != " " ]; then
    createMastersListForModulesInPath ssmModuleList $SSMPath
fi


#Add the frameworks_list to the CONFIGFILE.
sed -i "" "/frameworksList*/d" "$CONFIGFILE"  #delete any existing entry for frameworkslist
echo "frameworksList: $frameworks_list" >> $CONFIGFILE

if [ ! -d $SSMPath ]; then
    mkdir $SSMPath
fi

cd $SSMPath
if [ ! -d master ]; then
mkdir master
fi
cd master
mkdir $targetType
cd ../../..


#Copy all files from temp lists to masters in sorted order
sort -u $input_header_list > $SSMPath/master/$targetType/input_headers
sort -u $classes_list > $SSMPath/master/$targetType/classes
sort -u $protocols_list > $SSMPath/master/$targetType/protocols
sort -u $parts_list > $SSMPath/master/$targetType/parts
sort -u $parts_sa_list > $SSMPath/master/$targetType/parts_sa
sort -u $parts_sr_list > $SSMPath/master/$targetType/parts_sr

#SG : MADPIOS-696
#copying the list for all the frameworks on one go is leading to error saying too many arguments
#Implemented by copying files one framework at a time. If there is a framework in future which can create this
#problem, we will have batch the copying by handling say, 3000 files at a time
#cp $module_list $SSMPath/master/$targetType
IFS=' ' read -r -a array <<< "$module_list"
for element in "${array[@]}"
do
cp $element  $SSMPath/master/$targetType
done


#Generate masters
cd $SSMPath/master/$targetType
perl ../../../../nativebinding/mastergen.pl

#Remove temp files
rm -f *_sa.m *_sr.m input_headers classes protocols parts parts_sa parts_sr
