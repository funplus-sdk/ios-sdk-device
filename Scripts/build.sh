#!/usr/bin/env bash

# go to project root.
if [[ $(pwd) == *Scripts ]]; then
    cd ..
fi

ver=$(grep "VERSION = " Source/DeviceUtils.swift | sed "s/\"//g" | sed "s/public static let VERSION = //g")
out=$(echo Release/funplus-ios-sdk-device-utils-$ver | tr -d ' ')

echo SDK version: $ver
echo Output directory: $out

# check output directory.
if [ -d $out ]; then
    read -p 'Directory exists. This action will erase the existing directory, are you sure? [yN] ' yn
    if [[ $yn != 'y' && $yn != 'Y' ]]; then
        echo exit
        exit
    else
        rm -rf $out
    fi
fi

echo

# prepare output directory.
mkdir $out

# build device SDK
xcodebuild -target DeviceUtils -configuration Release -sdk iphoneos

# build simulator SDK
#xcodebuild -target DeviceUtils -configuration Release -sdk iphonesimulator

build_dir=Build
device_framework=$build_dir/Release-iphoneos/DeviceUtils.framework
#simulator_framework=$build_dir/Release-iphonesimulator/DeviceUtils.framework
#fat_framework=$build_dir/DeviceUtils.framework

#lipo -create -output $build_dir/DeviceUtils $device_framework/DeviceUtils $simulator_framework/DeviceUtils
#cp -R $device_framework $fat_framework
#mv $build_dir/DeviceUtils $fat_framework/DeviceUtils
#echo $ver > $fat_framework/VERSION
#cp -R $fat_framework $out/DeviceUtils.framework
echo $ver > $device_framework/VERSION
cp -R $device_framework $out/DeviceUtils.framework
