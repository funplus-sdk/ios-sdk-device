# FunPlus SDK Device Utils

## Requirements

- iOS 9.0+
- Xcode 8.1+
- Swift 3.0+
- The Xcode Terminal Tools (which provide the `xcodebuild` command)

## Table of Contents

* [Integration](#integration)
* [Usage](#usage)

## Integration

1. Add `DeviceUtils.framework` into your application project.
2. Next, select your application project in the Project Navigator (blue project icon) to navigate to the target configuration window and select the application target under the "Targets" heading in the sidebar.
3. In the tab bar at the top of that window, open the "General" panel.
4. Click on the `+` button under the "Embedded Binaries" section.
5. Select the four previously added frameworks into this section.
6. And that's it.

## Usage

### Get the Identifier for Vendor

Swift:

```swift
let idfa: String? = DeviceUtils.identifierForVendor
```

Objective-C:

```objective-c
NSString *idfa = [DeviceUtilsOC getIdentifierForVendor];
```

The returning value might be null.

### Get the Advertising Identifier

Swift:

```swift
let idfa: String? = DeviceUtils.advertisingIdentifier
```

Objective-C:

```objective-c
NSString *idfa = [DeviceUtilsOC getAdvertisingIdentifier];
```

The returning value might be null.

### Get the System Name

Swift:

```swift
let systemName: String = DeviceUtils.systemName
```

Objective-C:

```objective-c
NSString *systemName = [DeviceUtilsOC getSystemName]
```

### Get the System Version

Swift:

```swift
let systemVersion: String = DeviceUtils.systemVersion
```

Objective-C:

```objective-c
NSString *systemVersion = [DeviceUtilsOC getSystemVersion];
```

### Get Device's Model Name

Swift:

```swift
let modelName: String = DeviceUtils.modelName
```

Objective-C:

```objective-c
NSString *modelName = [DeviceUtilsOC getModelName()];
```

### Get App's Name

Swift:

```swift
let appName: String = DeviceUtils.appName
```

Objective-C:

```objective-c
NSString *appName = [DeviceUtilsOC getAppName];
```

### Get App's Version

Swift:

```swift
let appVersion: String = DeviceUtils.appVersion
```

Objective-C:

```objective-c
NSString *appVersion = [DeviceUtilsOC getAppVersion];
```

### Get App's Language

Swift:

```swift
let appLanguage: String = DeviceUtils.appLanguage
```

Objective-C:

```objective-c
NSString *appLanguage = [DeviceUtilsOC getAppLanguage];
```

### Get the Network Carrier Name

Swift:

```swift
let carrier: String = DeviceUtils.networkCarrierName
```

Objective-C:

```objective-c
NSString *carrier = [DeviceUtilsOC getNetworkCarrierName];
```

### Set the Screen Brightness

Swift:

```swift
let value: CGFloat = 0.3
let isSuccess: Bool = DeviceUtils.setScreenBrightness(brightness: value)
```

Objective-C:

```objective-c
CGFloat value = 0.3;
BOOL isSuccess = [DeviceUtilsOC setScreenBrightnessWithBrightness: value];
```

Value of the `brightness` parameter should be  between 0.0 and 1.0 inclusively. Values less than 0.0 will be treat as 0.0, and values greater than 1.0 will be treat as 1.