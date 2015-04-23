//
//  Omnia+App.m
//  OmniaDemo
//
//  Created by Khoa Pham on 8/23/14.
//  Copyright (c) 2014 Fantageek. All rights reserved.
//

#import "Omnia+App.h"

@implementation Omnia (App)

// http://stackoverflow.com/questions/16888780/ios-app-programmatically-get-build-version
+ (NSString *)appName
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleName"];
    //return [[NSBundle mainBundle] infoDictionary][(NSString *)kCFBundleNameKey];
}


+ (NSString *)localizedAppName
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"];
    //return [[NSBundle mainBundle] infoDictionary][(NSString *)kCFBundleLocalizationsKey];
}

+ (NSString *)bundleIdentifier
{
    return [[NSBundle mainBundle] bundleIdentifier];
    //return [[NSBundle mainBundle] infoDictionary][(NSString *)kCFBundleIdentifierKey];
}

+ (NSString *)appVersionNumber
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
}

+ (NSString *)appBuildNumber
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
    //return [[NSBundle mainBundle] infoDictionary][(NSString *)kCFBundleVersionKey];
}

+ (NSString *)mainNibName
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"NSMainNibFile"];
}

+ (NSString *)mainStoryboardName
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"UIMainStoryboardFile"];
}

+ (NSArray *)supportedInterfaceOrientation
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"UISupportedInterfaceOrientations"];
}

+ (NSNumber *)isStatusBarHidden
{
    // iOS6
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"UIStatusBarHidden"];
}

+ (NSString *)statusBarStyle
{
    // iOS6
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"UIStatusBarStyle"];
}

+ (id)requiredDeviceCapabilities
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"UIRequiredDeviceCapabilities"];
}

+ (NSArray *)backgroundModes
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"UIBackgroundModes"];
}

+ (NSNumber *)isApplicationExistsOnSuspend
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"UIApplicationExitsOnSuspend"];
}

+ (NSNumber *)isiTunesFileSharingEnabled
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"UIFileSharingEnabled"];
}

+ (NSNumber *)isViewGroupOpacityEnabled
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"UIViewGroupOpacity"];
}

+ (NSNumber *)isUIViewControllerBasedStatusBarAppearanceEnabled
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"UIViewControllerBasedStatusBarAppearance"];
}


@end
