//
//  Omnia+Device.m
//  OmniaDemo
//
//  Created by Khoa Pham on 8/23/14.
//  Copyright (c) 2014 Fantageek. All rights reserved.
//

#import "Omnia+Device.h"

@implementation Omnia (Device)

// http://stackoverflow.com/questions/458304/how-can-i-programmatically-determine-if-my-app-is-running-in-the-iphone-simulato
// http://ios.biomsoft.com/2011/09/20/how-to-detect-the-iphone-simulator/
+ (BOOL)isDevice
{
    return ![self isSimulator];
}

+ (BOOL)isSimulator
{
    return [[[UIDevice currentDevice] model] isEqualToString:@"iPhone Simulator"];
}

+ (NSString *)deviceName
{
    return [[UIDevice currentDevice] name];
}

+ (BOOL)isiPad
{
    return [UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPad;
    //return [[UIDevice currentDevice].model hasPrefix:@"iPad"];
}

+ (BOOL)isiPhone
{
    return [UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPhone;
    //return [[UIDevice currentDevice].model hasPrefix:@"iPhone"];
}

+ (BOOL)isiPod
{
    return [[UIDevice currentDevice].model hasPrefix:@"iPod"];
}

// http://stackoverflow.com/questions/7015709/xcode-getting-warning-implicit-conversion-from-enumeration-type-uideviceorient
+ (BOOL)isLandscape
{
    return UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation);
    //return UIDeviceOrientationIsLandscape([UIDevice currentDevice].orientation);
}

+ (BOOL)isPortrait
{
    return UIInterfaceOrientationIsPortrait([UIApplication sharedApplication].statusBarOrientation);
    //return UIDeviceOrientationIsPortrait([UIDevice currentDevice].orientation);
}

+ (CGFloat)deviceScale
{
    return [UIScreen mainScreen].scale;
}

+ (BOOL)isRetina
{
    return [self deviceScale] == 2.0;
}

// http://stackoverflow.com/questions/12446990/how-to-detect-iphone-5-widescreen-devices
+ (BOOL)isiPhone5
{
    return ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 ) < DBL_EPSILON );
}


@end
