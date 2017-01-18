# Device Utils for iOS

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

Before using the APIs, import the framework to your source files.

Swift:

```swift
import DeviceUtils
```

Objective-C:

```objective-c
#import <DeviceUtils/DeviceUtils-Swift.h>
```

### Get Identifier for Vendor

This method might return `null`.

Swift:

```swift
let idfv: String? = DeviceUtils.identifierForVendor
```

Objective-C:

```objective-c
NSString *idfv = [DeviceUtilsOC getIdentifierForVendor];
```

### Get Advertising Identifier

This method might return `null`.

Swift:

```swift
let idfa: String? = DeviceUtils.advertisingIdentifier
```

Objective-C:

```objective-c
NSString *idfa = [DeviceUtilsOC getAdvertisingIdentifier];
```

### Get System Name

Swift:

```swift
let systemName: String = DeviceUtils.systemName
```

Objective-C:

```objective-c
NSString *systemName = [DeviceUtilsOC getSystemName]
```

### Get System Version

Swift:

```swift
let systemVersion: String = DeviceUtils.systemVersion
```

Objective-C:

```objective-c
NSString *systemVersion = [DeviceUtilsOC getSystemVersion];
```

### Get Device Model Name

Swift:

```swift
let modelName: String = DeviceUtils.modelName
```

Objective-C:

```objective-c
NSString *modelName = [DeviceUtilsOC getModelName()];
```

### Get App Name

Swift:

```swift
let appName: String = DeviceUtils.appName
```

Objective-C:

```objective-c
NSString *appName = [DeviceUtilsOC getAppName];
```

### Get App Version

Swift:

```swift
let appVersion: String = DeviceUtils.appVersion
```

Objective-C:

```objective-c
NSString *appVersion = [DeviceUtilsOC getAppVersion];
```

### Get App Display Language

This method gets the display language for the application, it might be different from the device language.

Swift:

```swift
let appLanguage: String = DeviceUtils.appLanguage
```

Objective-C:

```objective-c
NSString *appLanguage = [DeviceUtilsOC getAppLanguage];
```

### Get Network Carrier Name

Swift:

```swift
let carrier: String = DeviceUtils.networkCarrierName
```

Objective-C:

```objective-c
NSString *carrier = [DeviceUtilsOC getNetworkCarrierName];
```

### Get Screen Brightness

This method returns a `CGFloat` value ranged from 0.0 to 1.0 inclusively.

Swift:

```swift
let brightness: CGFloat = DeviceUtils.getScreenBrightness()
```

Objective-C:

```objective-c
CGFloat brightness = [DeviceUtils getScreenBrightness];
```

### Set Screen Brightness

Value of the `brightness` parameter should be  between 0.0 and 1.0 inclusively. Values less than 0.0 will be treat as 0.0, and values greater than 1.0 will be treat as 1.

This method returns `false` if the operation fails.

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
