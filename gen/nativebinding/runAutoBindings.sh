CONFIGFILE="./nativebinding/autoBindingsPath.conf"

eval $(sed '/:/!d;/^ *#/d;s/:/ /;' < "$CONFIGFILE" | while read -r key val
do
str="$key='$val'"
echo "$str"
done)

#copy the generated bindings
perl ./nativebinding/autojsbinding.pl --jsnativebindingsourcepath $jsGenNativeBindingSourcePath --jsnativebindingdestpath $jsGenNativeBindingDestPath

#copy the non-generated bindings
perl ./nativebinding/autojsbinding.pl --jsnativebindingsourcepath $jsNonGenNativeBindingSourcePath --jsnativebindingdestpath $jsNonGenNativeBindingDestPath

#copy the handcodedWrappers
if [ $isHandcodedWrappersEnabled == true ]; then
    perl ./nativebinding/autojsbinding.pl --jsnativebindingsourcepath $jsHandcodedWrappersSourcePath --jsnativebindingdestpath $jsHandcodedWrappersDestPath
else
    echo "No handcoded wrappers to copy"
fi