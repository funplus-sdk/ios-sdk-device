#!/usr/bin/env bash

# go to project root.
if [[ $(pwd) == *Scripts ]]; then
    cd ..
fi

ver=$(grep "VERSION = " Source/DeviceUtils.swift | sed "s/\"//g" | sed "s/public static let VERSION = //g" | tr -d ' ')
framework=DeviceUtils.framework

src=Release/funplus-ios-sdk-device-utils-$ver/$framework
target_dir=../../unity/sdk-device-utils/Assets/FunPlus/DeviceUtils/Plugins/iOS

if [ -d $target_dir/DeviceUtils.framework ]; then
    rm -rf $target_dir/DeviceUtils.framework*
fi

dst=$target_dir/$framework

cp -R $src $dst

echo Copied $src to $dst
