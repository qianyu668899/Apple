//
//  Omnia+Device.h
//  OmniaDemo
//
//  Created by Khoa Pham on 8/23/14.
//  Copyright (c) 2014 Fantageek. All rights reserved.
//

#import "Omnia.h"

@interface Omnia (Device)

+ (BOOL)isDevice;
+ (BOOL)isSimulator;
+ (NSString *)deviceName;
+ (BOOL)isiPad;
+ (BOOL)isiPhone;
+ (BOOL)isiPod;
+ (BOOL)isLandscape;
+ (BOOL)isPortrait;
+ (CGFloat)deviceScale;
+ (BOOL)isRetina;
+ (BOOL)isiPhone5;

@end
