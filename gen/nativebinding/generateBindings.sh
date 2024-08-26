
CONFIGFILE="./generateBindingsPath.conf"

eval $(sed '/:/!d;/^ *#/d;s/:/ /;' < "$CONFIGFILE" | while read -r key val
do
str="$key='$val'"
echo "$str"
done)

#echo $iOSSDKVersion
#echo $libPath
#echo $headers
#echo $iOSSDKPath
#echo $pythonPath

export PYTHONPATH=$pythonPath
export DYLD_LIBRARY_PATH=$libPath
cd $PYTHONPATH
python3 ../gen/nativebinding/bindgen.py -s $iOSSDK -t $targetVersion $headers


