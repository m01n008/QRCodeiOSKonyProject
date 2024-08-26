# Pass AppID of the Project as argument to the script

FRMWRK=$1
config=$2
xcodeprojpath=$3
binaryPath=$4
nfiversion=$5

if [ $# -ne 5 ]
then
echo "Please Pass AppID, Configuration, Path of the Project, binaryPath and NFIVersion as argument to the script"
exit -1
fi

cd $xcodeprojpath

PROJECT_DIR=$PWD
DEVICE_ARCHS="arm64 armv7"
SIMULATOR_ARCHS="i386 x86_64 arm64"

if [[ "$nfiversion" == "1.0" || "$nfiversion" == "2.0" ]]; then
    SIMULATOR_ARCHS="i386 x86_64"
fi


#Cleaning Directories
rm -rf PlatformFiles/Modules
rm -rf FrameworkBinaries/
rm -rf PlatformFiles/KonyIOSLibraries/

#Creating Directories
mkdir -p FrameworkBinaries/$config-iphonesimulator
mkdir -p FrameworkBinaries/$config-iphoneos
mkdir -p $PROJECT_DIR/PlatformFiles/Modules
mkdir -p $PROJECT_DIR/PlatformFiles/KonyIOSLibraries/

buildTarget(){
    targetName=$1
    config=$2
    generatedProductName=$3
    XCFramework_Output="$PROJECT_DIR/PlatformFiles/Modules/$generatedProductName.xcframework"
    
    #Cleaning Target
    xcodebuild -target $targetName clean -configuration $config

    #Building Target for Device Architectures
    xcodebuild -target $targetName -quiet -sdk iphoneos ARCHS="$DEVICE_ARCHS" -configuration $config ONLY_ACTIVE_ARCH=NO IPHONEOS_DEPLOYMENT_TARGET=9.0

    #Checking whether the Device Build is successful or not
    if [ ! -e build/$config-iphoneos/$generatedProductName.framework/$generatedProductName ]; then
        echo "Generation of $generatedProductName for Device Architectures is Failed !!!."
        exit -1
    fi

    echo "Generation of $generatedProductName for Device Architectures is Done.";

    cp -rf build/$config-iphoneos/$generatedProductName.framework FrameworkBinaries/$config-iphoneos/$generatedProductName.framework
    
    #Building KonyJS Target for Simulator Architectures
    xcodebuild -target $targetName -quiet -sdk iphonesimulator ARCHS="$SIMULATOR_ARCHS" -configuration $config ONLY_ACTIVE_ARCH=NO IPHONEOS_DEPLOYMENT_TARGET=9.0

    if [ ! -e build/$config-iphonesimulator/$generatedProductName.framework/$generatedProductName ]; then
        echo "Generation of $generatedProductName for Simulator Architectures is Failed !!!."
        xcodebuild -create-xcframework \
            -framework "$PROJECT_DIR/FrameworkBinaries/$config-iphoneos/$generatedProductName.framework" \
            -output $XCFramework_Output
    else
        echo "Generation of $generatedProductName for Simulator Architectures is Done.";

        cp -rf build/$config-iphonesimulator/$generatedProductName.framework FrameworkBinaries/$config-iphonesimulator/$generatedProductName.framework

        # Generating XCFramework to support M1 Mac's
        xcodebuild -create-xcframework \
            -framework "$PROJECT_DIR/FrameworkBinaries/$config-iphoneos/$generatedProductName.framework" \
            -framework "$PROJECT_DIR/FrameworkBinaries/$config-iphonesimulator/$generatedProductName.framework" \
            -output $XCFramework_Output
    fi
    
    if [ ! -d $XCFramework_Output ]; then
        echo "XCFramework Generation for $generatedProductName Failed !!!."
        exit -1
    else
        echo "XCFramework for $generatedProductName Generated."
    fi
}

#Building KonyJS Target
buildTarget 'KonyJS' $config $FRMWRK

if [ "$nfiversion" != "1.0" ]; then
    #Building NFILoader Target
    buildTarget 'NFILoader' $config 'NFILoader'
fi

cd "$PROJECT_DIR/gen/ModuleDependencies/PlatformDependencies/$config"

if [ $? != 0 ] ; then
echo "VMAppWithKonyLib/gen/ModuleDependencies/PlatformDependencies Folder is not created"
exit -1
fi

# Creating PlatformDependencies.zip containing all the Kony Frameworks except KonyMain and Charts
zip -r PlatformDependencies.zip * -x "./KonyMain.xcframework/*" > ../PlatformDependenciesZipLog.txt

if [ ! -e PlatformDependencies.zip ]; then
echo "Creation of PlatformDependencies.zip Failed !!!."
exit -1
fi

mv PlatformDependencies.zip "$PROJECT_DIR/PlatformFiles/Modules/"

cd "$PROJECT_DIR/gen/ModuleDependencies/FFIDynamicFrameworks"

if [ $? != 0 ] ; then
echo "VMAppWithKonyLib/gen/ModuleDependencies/FFIDynamicFrameworks Folder is not created"
exit -1
fi

# Creating LibraryDependencies.zip containing all the NFIs and Frameworks that are related only to that certain Library.
zip -r LibraryDependencies.zip * > ../LibraryDependenciesZipLog.txt

if [ ! -e LibraryDependencies.zip ]; then
echo "Creation of LibraryDependencies.zip Failed !!!."
exit -1
fi

mv LibraryDependencies.zip "$PROJECT_DIR/PlatformFiles/Modules/"

cd "$PROJECT_DIR/PlatformFiles/Modules/"

zip -r $FRMWRK * > $FRMWRK"ZipLog".txt

if [ ! -e $FRMWRK.zip ]; then
echo "Creation of $FRMWRK.zip Failed !!!."
exit -1
fi

mv $FRMWRK.zip "$binaryPath/"

echo "Module Generation is Done."
echo "Path For Module : $binaryPath/$FRMWRK.zip"

exit 0
