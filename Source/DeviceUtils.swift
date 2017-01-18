//
//  DeviceUtils.swift
//  DeviceUtils
//
//  Created by Yuankun Zhang on 18/11/2016.
//  Copyright © 2016 FunPlus. All rights reserved.
//

import Foundation
import AdSupport
import CoreTelephony

public class DeviceUtils {
    
    public static let VERSION = "4.0.1-alpha.0"
    
    /// Device's identifier for vendor or `nil`.
    static let identifierForVendor: String? = {
        return UIDevice.current.identifierForVendor?.uuidString
    }()
    
    /// Device's advertising identifier or `nil`.
    static let advertisingIdentifier: String? = {
        guard ASIdentifierManager.shared().isAdvertisingTrackingEnabled else {
            return nil;
        }
        
        return ASIdentifierManager.shared().advertisingIdentifier.uuidString
    }()
    
    /// Device's operating system name.
    static let systemName: String = {
        return UIDevice.current.systemName;
    }()
    
    /// Device's operating system version.
    static let systemVersion: String = {
        return UIDevice.current.systemVersion
    }()
    
    /// Device's model name.
    static let modelName: String = {
        return UIDevice.current.model;
    }()
    
    /// App name or "Unknown".
    static let appName: String = {
        return Bundle.main.infoDictionary?["CFBundleName"] as? String ?? "Unknown"
    }()
    
    /// App version or "1.0.0".
    static let appVersion: String = {
        let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "0.0.0"
        let build = Bundle.main.infoDictionary?["CFBundleVersion"] as? String ?? "0"
        return "\(version) build \(build)"
    }()
    
    /// App language. It might be different from the device's default language.
    static let appLanguage: String = {
        return (Locale.current as NSLocale).object(forKey: NSLocale.Key.languageCode) as? String ?? "en"
    }()
    
    /// Name of network carrier or "Unknown".
    static let networkCarrierName: String = {
        return CTTelephonyNetworkInfo().subscriberCellularProvider?.carrierName ?? "Unknown"
    }()
    
    /// Get screen brightness.
    static func getScreenBrightness() -> CGFloat {
        return UIScreen.main.brightness
    }
    
    /// Set screen brightness.
    static func setScreenBrightness(brightness: CGFloat) -> Bool {
        let value = brightness < 0.0 ? 0.0 : brightness > 1.0 ? 1.0 : brightness
        UIScreen.main.brightness = value
        
        return true
    }
}
