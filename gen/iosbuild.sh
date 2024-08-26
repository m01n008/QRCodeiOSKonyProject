#!/bin/sh

platform="$1"
project="$2"
version="$3"
appID="$4"
archive="$5"
mode="$6"
username="$7"
provproffilename="$8"
keychainpassword="$9"
codesignidentifier="${10}"
ioscodebasepath="${11}"
simulatorsdk="${12}"
basesdk="${13}"
sdkFolderName="${14}"
bundle_identifier="${15}"
windowsuserID="${16}"
launch="${17}"
openxcode="${18}"
encryptedkeychainpassword="${19}"
appname="${20}"
buildmode="${21}"
preview="${22}"
fpreview="${23}"

deviceguid="${24}" #3835B3CD-B188-40D4-B29E-C1B24C06E1E5 or empty for earlier 6
devicetypeid="${25}" #com.apple.CoreSimulator.SimDeviceType.iPhone-5s
xcodeversion="${26}" #Xcode 6.0
xcodeversionnumber="${27}" #5.1.1
protected="${28}" #true/false
watchEnabled="${29}" #true/false
watchsimGUID="${30}" #7AA73895-8C58-4A6F-8D48-750B719830B0
watchsimTypeID="${31}" #com.apple.CoreSimulator.SimDeviceType.Apple-Watch-38mm
watch_bundle_identifier="${32}" #com.kony.AppOne.watchkitapp
exportplistfilepath="${33}"
password="${34}"
issimulatorrunning="${35}"
teamidentity="${36}"
distributionMethod="${37}"
isMacOS="${38}"
isUniversal="${39}"
isLibraryBuild="${40}"
isSQLCipherEnabled="${41}"
NFIVersion="${42}"

exec="true"
#mode="silent"
apps="all"

##########ERROR CODES#########
UNLOCK_FAILED=170
CODESIGN_FAILED=171
EXTRACT_FAILED=172
XCODEBUILD_FAILED=173
CODEBASEPATH_NOT_FOUND=174
LAUNCH_FAILED=175
ARCHIVE_FAILED=176
LIBRARYBUILD_FAILED=177
ISXCODE_GT9="false"

echo "#####"
echo "platform:$platform, project:$project,version:$version, appID:$appID, archive:$archive, mode:$mode"
echo "provproffilename:$provproffilename, codesignidentifier:$codesignidentifier"
#echo "username:$username, keychainpassword:$encryptedkeychainpassword, developmentID:$teamidentity, windowsuserID:$windowsuserID"
echo "ioscodebasepath:$ioscodebasepath, simulatorsdk:$simulatorsdk,basesdk:$basesdk, sdkFolderName:$sdkFolderName"
echo "bundle_identifier:$bundle_identifier"
echo "#####"

echo "${deviceguid}";
#echo "${keychainpassword}@@@@@@@@@@@@@@@@@@"

if [ "$platform" = "retina" ] ; then
platformfolder="iPhone"
else
platformfolder="$platform"
fi

if [ "$watchEnabled" = "true" ] && [ "$preview" = "false" ] ; then
buildmode="release"
fi

echo "^^^^^^^^^^^^$platformfolder"

export PATH=/developer/scripts:/applications:/usr/opt/bin/:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/developer/scripts/sbin:/sbin:$PATH
env

echo "@@@@@@@@ = $buildmode";


sourcefiles=`pwd`

xcodepath="${ioscodebasepath}"
xcodeproj="VMAppWithKonylib.xcodeproj"
exten=".KAR"
if [ "$watchEnabled" = "true" ] && [ "$preview" = "false" ] ; then

if [ "$buildmode" = "debug" ] ; then
apppath="$xcodepath/build/Build/Products/Debug-iphonesimulator"
else
apppath="$xcodepath/build/Build/Products/Release-iphonesimulator"
fi

else

if [ "$buildmode" = "debug" ]; then
apppath="$xcodepath/build/Build/Products/Debug-iphonesimulator"
else
apppath="$xcodepath/build/Build/Products/Release-iphonesimulator"
fi

fi

echo "@@@@@@@@@@@@@@@@@ = $apppath"


appreleasepath="$xcodepath/build/$buildmode-iphoneos"

target="KRelease"

if [ "$preview" = "true" ] ; then
target="Preview"
fi
if [ "$buildmode" = "release" ] && [ "$protected" = "true" ] ; then
target="KProtected"
appreleasepath="$xcodepath/build/protected-iphoneos"
fi



if [ "$buildmode" = "debug" ] ; then
configuration="Debug"
else
configuration="Release"
fi

if [ "$buildmode" = "release" ] && [ "$protected" = "true" ] ; then
configuration="Protected"
fi

if [ "$buildmode" = "debug" ] ; then
appprefix="Debugger-"
else
appprefix=""
fi

if [ "$preview" = "true" ] ; then
appprefix=""
fi
if [ "$fpreview" = "true" ] ; then
appprefix=""
fi

if [ "$watchEnabled" = "true" ] && [ "$preview" = "false" ] ; then
target="KRelease"
configuration="Release"
appprefix=""
fi
echo"############### ${configuration} @@@@@@@@@ ${target}"



launchappname="$appprefix$appname.app"

if [ "$isUniversal" = true ] ; then
karfilename="konyappuniversal$exten"
else
karfilename="konyapp$platform$exten"
fi
if [ "$preview" = "true" ] ; then
launchappname="Preview.app"
fi
if [ "$fpreview" = "true" ] ; then
launchappname="${appname}preview.app"
fi

if [ "$platform" = "iphone" ] ; then
sdk="iphonesimulator4.3"
else
sdk="iphonesimulator4.3"
fi



simnew="false";
xcodePath=`xcode-select --print-path`
#get the exact path for simulator
echo xcode-select --print-path
if [ $(echo "firstletter=${xcodeversionnumber:0:1} < 6" | bc) -ne 0 ]; then
simulator="$xcodePath/Platforms/iPhoneSimulator.platform/Developer/Applications"
else
simulator="$xcodePath/Applications"
#Applications/Xcode6-Beta4.app/Contents/Developer/Applications/iOS\ Simulator.app
# Create a ln if we are using old app name since app name is changed now.
# dont know if waxsim is handling it..... --Aasim
simnew="true"
fi

#split the xcodeversion by '.'
#versionarray will be containing individual numbers in xcodeversion
#if xcodeversion is 10.0 the versionarray[0] contains 10 and versionarray[1] contains 0
versionarray=( ${xcodeversionnumber//./ } )
if [ $(echo "${versionarray[0]} >= 10" | bc) -ne 0 ]; then
echo "Xcode Version is $xcodeversionnumber"
simulator="$xcodePath/Applications"
simnew="true"
fi
if [ $(echo "${versionarray[0]} >= 9" | bc) -ne 0 ]; then
ISXCODE_GT9="true"
fi

xcodeprojfull=."$xcodepath/$xcodeproj"


#simulator="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications"
#simulator="/Applications/Xcode6-Beta4.app/Contents/Developer/Applications"
#/Users/Aasim/Library/Developer/CoreSimulator/Devices/7660ACB7-D569-481D-BD00-00B64442F01F/data/Containers/Bundle
simapppath="$HOME/Library/Application Support/iphone simulator/$sdkFolderName/applications"

if [ "$simnew" == "true" ] ; then
devicedir="$HOME/Library/Developer/CoreSimulator/Devices"
# ddirs=`ls -d $devicedir/*`

# for dir in $ddirs
# do
# name=`/usr/libexec/PlistBuddy -c "print :name" ${dir}/device.plist`
# runtime=`/usr/libexec/PlistBuddy -c "print :runtime" ${dir}/device.plist`
# sub=`echo $runtime| cut -d'-' -f 2`
# firstletter="${sdkFolderName:0:1}"
# if [ "$name" = "$device" ] ; then
# if [ "$firstletter" == "$sub" ]; then
# echo "${dir}/device.plist for $name"
# simapppath="${dir}/data/Containers/Bundle/Application"
# fi
# fi
# #udid= `/usr/libexec/PlistBuddy -c "print :UDID" $MYDIR/${DIR}/device.plist`
# done
simapppath="${devicedir}/${deviceguid}/data/Containers/Bundle/Application"
fi



scriptpath="$HOME/KonyiOSWorkspace/$windowsuserID/Kony"
binarypath="$HOME/KonyiOSWorkspace/$windowsuserID/Kony/$project/$platform"
provprofile="$HOME/Library/MobileDevice/Provisioning Profiles/$provproffilename"
KEYCHAIN_LOCATION="$HOME/Library/Keychains/login.keychain"
KEYCHAIN_PASSWORD="$keychainpassword"

echo "------------------------------------------------------------------------------------------------------"
echo "Source KBF = $sourcefiles"
echo "Xcode Path = $xcodepath"
echo "Xcode Project = $xcodeproj"
echo "Xcode Project Path = $xcodeprojfull"
echo "App Path = $apppath"
echo "------------------------------------------------------------------------------------------------------"

if [ "$exec" = "true" ] ; then
cd /
cd "$xcodepath/gen"
if [ $? != 0 ] ; then
exit $CODEBASEPATH_NOT_FOUND
fi
pwd
cp -v $sourcefiles/*.KAR .
ls *.KAR

pwd

KARExtractionCommand="perl extract.pl $karfilename sqd"

if [ "$isSQLCipherEnabled" = "true" ] ; then
echo "-------------------------------------------------------------------------------------"
echo "Encryption for SQL is enabled for the Application"
echo "-------------------------------------------------------------------------------------"
KARExtractionCommand+=" --sqlcipher"
fi

echo "ExtractionCommand : $KARExtractionCommand"

if [ "$isMacOS" = "true" ] ; then
$KARExtractionCommand
else
echo ${password} | sudo -S $KARExtractionCommand
fi
if [ $? != 0 ] ; then
exit $EXTRACT_FAILED
fi

if [ "$isLibraryBuild" = "true" ] ; then
if [ "$isMacOS" = "true" ] ; then
sh generateModule.sh $appID $configuration $xcodepath $binarypath $NFIVersion
else
echo ${password} | sudo -S sh generateModule.sh $appID $configuration $xcodepath $binarypath $NFIVersion
fi

if [ $? != 0 ] ; then
exit $LIBRARYBUILD_FAILED
else
exit 0
fi
fi

if [ "$mode" = "build" ] ; then
echo "-------------------------------------------------------------------------------------"
echo "MODE = BUILD -- Building APP files for simulator."
echo "-------------------------------------------------------------------------------------"
#security default-keychain -s "$KEYCHAIN_LOCATION"
#security unlock-keychain -p $KEYCHAIN_PASSWORD "$KEYCHAIN_LOCATION"
#-derivedDataPath build creates the folder build relative to where you ran xcodebuild from

cd "$xcodepath"

if [ "$archive" = "false" ] ; then
if [ "$watchEnabled" = "true" ] ; then
xcodebuild -scheme KWatchOS2 -derivedDataPath build -destination "platform=iOS Simulator,id=${deviceguid}"
else
xcodebuild -scheme "$target" -configuration "$configuration" -project "$xcodeproj" -sdk $simulatorsdk -derivedDataPath build -destination "platform=iOS Simulator,id=${deviceguid}"
fi

if [ $? != 0 ] ; then
exit $XCODEBUILD_FAILED
fi
fi
if [ "$archive" = "true" ] ; then
echo "-------------------------------------------------------------------------------------"
echo "ARCHIVE ON -- Building APP files for ipa."
echo "-------------------------------------------------------------------------------------"
if [ "$isMacOS" = "true" ] ; then
security list-keychains -s "$KEYCHAIN_LOCATION"
else
echo ${password} | sudo -S security list-keychains -s "$KEYCHAIN_LOCATION"
fi
security unlock-keychain -p $KEYCHAIN_PASSWORD "$KEYCHAIN_LOCATION"
if [ $? != 0 ] ; then
exit $UNLOCK_FAILED
fi

#if [ "$isMacOS" = "true" ] ; then
#perl -p -i'Orig' -e 'BEGIN{undef $/;} s/,resource-rules(.*sign}).*ResourceRules.plist"/$1/smg' "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/PackageApplication"
#else
#echo ${password} | sudo -S perl -p -i'Orig' -e 'BEGIN{undef $/;} s/,resource-rules(.*sign}).*ResourceRules.plist"/$1/smg' "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/PackageApplication"
#fi

cd "$xcodepath"
/usr/libexec/PlistBuddy -c "Set CFBundleIdentifier $bundle_identifier" info.plist

# perl $xcodepath/gen/automaticProvProfile.pl $teamidentity $xcodepath/VMAppWithKonylib.xcodeproj/project.pbxproj
# xcodebuild archive -scheme "$target" -configuration "$configuration" -project "$xcodeproj" -sdk $basesdk IDENTIFIER=$bundle_identifier CODE_SIGN_IDENTITY="iPhone Developer" PROVISIONING_PROFILE=${provproffilename//.mobileprovision/} -archivePath $PWD/${appID}.xcarchive

if [ $? != 0 ] ; then
exit $XCODEBUILD_FAILED
fi
else
echo "-------------------------------------------------------------------------------------"
echo "ARCHIVE OFF -- Not Building APP files for IPA."
echo "-------------------------------------------------------------------------------------"
fi
else
echo "-------------------------------------------------------------------------------------"
echo "MODE = NULL -- Doing Nothing."
echo "-------------------------------------------------------------------------------------"
fi

if [ "$openxcode" = "true" ] ; then
echo "-------------------------------------------------------------------------------------"
echo "OPEN XCODE = TRUE -- Opening Xcode Project."
echo "-------------------------------------------------------------------------------------"
#sh /developer/scripts/pkill.sh iphone
open "$xcodepath"/"$xcodeproj"
fi

if [ "$archive" = "true" ] ; then
echo "-------------------------------------------------------------------------------------"
echo "Archive ON -- creating IPA."
echo "-------------------------------------------------------------------------------------"
#security default-keychain -s "$KEYCHAIN_LOCATION"
if [ "$isMacOS" = "true" ] ; then
security list-keychains -s "$KEYCHAIN_LOCATION"
else
echo ${password} | sudo -S security list-keychains -s "$KEYCHAIN_LOCATION"
fi
security unlock-keychain -p $KEYCHAIN_PASSWORD "$KEYCHAIN_LOCATION"
if [ $? != 0 ] ; then
exit $UNLOCK_FAILED
fi
(cd $xcodepath/gen && perl $xcodepath/gen/automaticProvProfile.pl $teamidentity $xcodepath/VMAppWithKonylib.xcodeproj/project.pbxproj)

#split the xcodeversion by '.'
#versionarray will be containing individual numbers in xcodeversion
#if xcodeversion is 10.0 the versionarray[0] contains 10 and versionarray[1] contains 0
SIGNING_IDENTITY="iPhone Developer"
versionarray=( ${xcodeversionnumber//./ } )
if [ $(echo "${versionarray[0]} >= 11" | bc) -ne 0 ]; then
    SIGNING_IDENTITY="Apple Development"
fi

xcodebuild archive -scheme "$target" -configuration "$configuration" -project "$xcodeproj" -destination "generic/platform=iOS" CODE_SIGN_IDENTITY="$SIGNING_IDENTITY" DEVELOPMENT_TEAM=${teamidentity} -archivePath $PWD/${appID}.xcarchive

if [ $? != 0 ] ; then
exit $ARCHIVE_FAILED
fi
defaults write ${exportplistfilepath}/export.plist  "compileBitcode" -boolean No
if [ $ISXCODE_GT9 = "false" ] ; then
xcodebuild \
-exportArchive \
-archivePath $PWD/${appID}.xcarchive \
-exportOptionsPlist ${exportplistfilepath}/export.plist \
-exportPath $binarypath
else
xcodebuild \
-exportArchive \
-archivePath $PWD/${appID}.xcarchive \
-exportOptionsPlist ${exportplistfilepath}/export.plist \
-exportPath $binarypath -allowProvisioningUpdates
fi



if [ $(echo "${versionarray[0]} >= 12" | bc) -ne 0 ]; then
    #xcode 12 and above generates ipa file with app name.
    mv $binarypath/{"$appprefix$appname.ipa","$appID.ipa"}
else
    mv $binarypath/{$target.ipa,$appID.ipa}
fi


if [ $? != 0 ] ; then
exit $CODESIGN_FAILED
fi
else
echo "-------------------------------------------------------------------------------------"
echo "Archive OFF -- Not creating IPA."
echo "-------------------------------------------------------------------------------------"
fi
else
echo "exec off not building"
fi


if [ "$launch" = "true" ] ; then

#rm -r "$simapppath/"*
#cd "$apppath"
#pwd
#d="0"
#if [ "$apps" = "all" ] ; then
#echo "-------------------------------------------------------------------------------------"
#echo "Copying ALL Apps to Simulator"
#echo "-------------------------------------------------------------------------------------"
#for i in *.app ; do
#echo "app file: $i"
#d=`expr $d '+' 1`
#cp -r "$i" "$simapppath/"
#echo "copied $i to '$simapppath/'"
##mv "$i" "$(echo $i | sed 's/\.JPG$/.x/')"
##mv "$(echo $i | sed 's/\.JPG$/.x/')" "$(echo $i | sed 's/\.JPG$/.jpg/')"
#done
#else
#echo "-------------------------------------------------------------------------------------"
#echo "Copying Single App to Simulator"
#echo "-------------------------------------------------------------------------------------"
#fi
#ls -l "$simapppath"

#sh /developer/scripts/pkill.sh iphone
#osascript "$scriptpath/isim$platform.as"
killall "iossim"
if [ "$simnew" == "true" ] ; then
killall "iOS Simulator" 2>/dev/null
#killall "launched_sim" 2>/dev/null
else
killall "iPhone Simulator" 2>/dev/null
killall "Simulator" 2>/dev/null
#killall "launched_sim" 2>/dev/null
fi
#sh $sourcefiles/launch.sh
#/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/'iPhone Simulator.app'/Contents/MacOS/'iPhone Simulator' -SimulateApplication /Users/user/Library/'Application Support'/'iPhone Simulator'/6.0/Applications/app1/iOSApp.app/iOSApp -SimulateDevice iPhoneRetina &
#open "$simulator/iPhone Simulator.app"

# ./iossim launch /Users/STUDIO/Library/Developer/CoreSimulator/Devices/BF68A771-7064-4B81-A3E4-D3CB7DCD2091/data/Containers/Bundle/Application/Debugger-Tabpane.app --devicetypeid com.apple.CoreSimulator.SimDeviceTypes.iPhone-5s
if [ "$simnew" == "true" ] ; then
echo "------------------------------------------------------------------------------------------------------"
echo "Build Complete.  Launching Emulator in MAC.."
echo "------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------"
#osascript -e "tell application \"iOS Simulator\" to activate"
#if [ "$issimulatorrunning" = "false" ] ; then
#osascript -e "tell application \"Simulator\" to quit"
#if [ "$watchEnabled" = "true" ] ; then
#osascript -e "tell application \"Simulator (Watch)\" to quit"
#fi
#osascript -e "tell application \"iOS Simulator\" to quit"
#xcrun simctl shutdown ${deviceguid}
#fi

if [ "$watchEnabled" = "true" ] ; then
xcrun instruments -w ${watchsimGUID}
if [ "$issimulatorrunning" = "false" ] ; then
sleep 15
fi
else
xcrun instruments -w ${deviceguid}
fi
if [ "$issimulatorrunning" = "false" ] ; then
sleep 5
fi

cd "$xcodePath"/usr/bin/
xcrun simctl install ${deviceguid} "$apppath/$launchappname"
cd "$xcodePath"/usr/bin/
xcrun simctl launch ${deviceguid} ${bundle_identifier}
if [ "$watchEnabled" = "true" ] ; then
sleep 5
xcrun simctl launch ${watchsimGUID} ${watch_bundle_identifier}
fi


#echo "./iossim launch $simapppath/$launchappname --devicetypeid ${devicetypeid} --exit"
#`$scriptpath/iossim "launch" "$simapppath/$launchappname" "--devicetypeid" "${devicetypeid}" "--exit"`#> out.txt 2>&1 &
#if [ $? != 0 ] ; then
#exit $LAUNCH_FAILED
#fi


echo "The app is now running in simulator"
else
chmod 777 $scriptpath/waxsim
if [ "$platform" = "iphone" ] ; then
$scriptpath/waxsim -f 'iphone'  "$simapppath/$launchappname" > out.txt 2>&1 &
if [ $? != 0 ] ; then
exit $LAUNCH_FAILED
fi
else
$scriptpath/waxsim -f 'ipad'  "$simapppath/$launchappname" > out.txt 2>&1 &
if [ $? != 0 ] ; then
exit $LAUNCH_FAILED
fi
fi
#appswitch -F -a "iOS Simulator"
#sleep 4
#appswitch -F -a "iOS Simulator"

echo "------------------------------------------------------------------------------------------------------"
echo "Build Complete.  Launching Emulator in MAC.."
echo "------------------------------------------------------------------------------------------------------"
fi
fi
exit 0

