CONFIGFILE="./nativebinding/mastersConf.conf"

eval $(sed '/:/!d;/^ *#/d;s/:/ /;' < "$CONFIGFILE" | while read -r key val
do
str="$key='$val'"
echo "$str"
done)

targetType=$1
#echo $SSMPath
#echo $targetType
#echo $mastergenPath
#echo $masterDestPath


masterDestPath+="_"
masterDestPath+=$targetType
cp $mastergenPath/$targetType/*.* $masterDestPath
