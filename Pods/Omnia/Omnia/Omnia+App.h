//
//  Omnia+App.h
//  OmniaDemo
//
//  Created by Khoa Pham on 8/23/14.
//  Copyright (c) 2014 Fantageek. All rights reserved.
//

#import "Omnia.h"

@interface Omnia (App)

+ (NSString *)appName;
+ (NSString *)localizedAppName;
+ (NSString *)bundleIdentifier;
+ (NSString *)appVersionNumber;
+ (NSString *)appBuildNumber;
+ (NSString *)mainNibName;
+ (NSString *)mainStoryboardName;
+ (NSArray *)supportedInterfaceOrientation;
+ (NSNumber *)isStatusBarHidden;
+ (NSString *)statusBarStyle;
+ (id)requiredDeviceCapabilities;
+ (NSArray *)backgroundModes;
+ (NSNumber *)isApplicationExistsOnSuspend;
+ (NSNumber *)isiTunesFileSharingEnabled;
+ (NSNumber *)isViewGroupOpacityEnabled;
+ (NSNumber *)isUIViewControllerBasedStatusBarAppearanceEnabled;

@end
