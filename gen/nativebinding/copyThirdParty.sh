CONFIGFILE="./nativebinding/thirdPartyConf.conf"

eval $(sed '/:/!d;/^ *#/d;s/:/ /;' < "$CONFIGFILE" | while read -r key val
do
str="$key='$val'"
echo "$str"
done)

#echo $SSMPath
#echo $thirdpartyDestPath
#echo $thirdparty

i=1
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

#Copies the thirdparty files present in the individual modules to central thirdparty folder
copyThirdPartyFilesInPath(){
    moduleArr=("${!1}")
    path=$2

    for i in ${moduleArr[@]};
        do
            preBundledModuleName=$i
            thirdpartySourcePath=$path$preBundledModuleName$thirdparty
            if [ -d "$thirdpartySourcePath" ]; then
            cp -R $thirdpartySourcePath/* $thirdpartyDestPath/
            fi
        done

}


#Read all third party files in preBundled SSM if enableMobileFirstAPIs is set
if [ $enableMobileFirstAPIs == 1 ]; then
copyThirdPartyFilesInPath preBundledSSMModules $preBundledSSMPath
fi


#Read all third party files in video SSM if enableVideoWidget is set
if [ $enableVideoWidget == 1 ]; then
copyThirdPartyFilesInPath videoWidgetSSMModules $videoWidgetSSMPath
fi

#Read all third party files in SSM
if [ ! -z "$ssmModuleList" -a "$ssmModuleList" != " " ]; then
copyThirdPartyFilesInPath ssmModuleList $SSMPath
fi



