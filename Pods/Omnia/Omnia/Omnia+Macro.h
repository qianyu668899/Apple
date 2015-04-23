//
//  Omnia+Macro.h
//  OmniaDemo
//
//  Created by Khoa Pham on 8/23/14.
//  Copyright (c) 2014 Fantageek. All rights reserved.
//

#pragma mark - Compile Time Version

#define OMNIA_SIMULATOR                 TARGET_IPHONE_SIMULATOR
#define OMNIA_DEPLOYMENT_TARGET         __IPHONE_OS_VERSION_MIN_REQUIRED
#define OMNIA_BASE_SDK                  __IPHONE_OS_VERSION_MAX_ALLOWED
#define OMNIA_IS_BASE_SDK_5_0_OR_ABOVE   OMNIA_BASE_SDK >= __IPHONE_5_0
#define OMNIA_IS_BASE_SDK_6_0_OR_ABOVE   OMNIA_BASE_SDK >= __IPHONE_6_0
#define OMNIA_IS_BASE_SDK_7_0_OR_ABOVE   OMNIA_BASE_SDK >= __IPHONE_7_0
#define OMNIA_IS_BASE_SDK_7_1_OR_ABOVE   OMNIA_BASE_SDK >= __IPHONE_7_1
#define OMNIA_IS_BASE_SDK_8_0_OR_ABOVE   OMNIA_BASE_SDK >= __IPHONE_8_0


#pragma mark - Singleton

#define OMNIA_SINGLETON_H(name)     + (instancetype)name;
#define OMNIA_SINGLETON_M(name)     + (instancetype)name { static dispatch_once_t onceToken; static id instance = nil; dispatch_once(&onceToken, ^{ instance = [[self alloc] init]; }); return instance; }
