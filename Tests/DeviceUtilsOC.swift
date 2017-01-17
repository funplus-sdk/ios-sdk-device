//
//  DeviceUtilsOC.swift
//  DeviceUtils
//
//  Created by Yuankun Zhang on 17/01/2017.
//  Copyright © 2017 FunPlus. All rights reserved.
//

import Foundation

@objc public class DeviceUtilsOC : NSObject {

    @objc public class func getIdentifierForVendor() -> String? {
        return DeviceUtils.identifierForVendor
    }
    
    @objc public class func getAdvertisingIdentifier() -> String? {
        return DeviceUtils.advertisingIdentifier
    }
    
    @objc public class func getSystemName() -> String {
        return DeviceUtils.systemName
    }
    
    @objc public class func getSystemVersion() -> String {
        return DeviceUtils.systemVersion
    }
    
    @objc public class func getModelName() -> String {
        return DeviceUtils.modelName
    }
    
    @objc public class func getAppName() -> String {
        return DeviceUtils.appName
    }
    
    @objc public class func getAppVersion() -> String {
        return DeviceUtils.appVersion
    }
    
    @objc public class func getAppLanguage() -> String {
        return DeviceUtils.appLanguage
    }
    
    @objc public class func getNetworkCarrierName() -> String {
        return DeviceUtils.networkCarrierName
    }
    
    @objc public class func setScreenBrightness(brightness: CGFloat) {
        DeviceUtils.setScreenBrightness(brightness: brightness)
    }
}
