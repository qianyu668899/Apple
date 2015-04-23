//
//  Omnia+Capability.h
//  OmniaDemo
//
//  Created by Khoa Pham on 8/23/14.
//  Copyright (c) 2014 Fantageek. All rights reserved.
//

#import "Omnia.h"

@interface Omnia (Capability)

+ (BOOL)isLocationServiceEnabled;
+ (BOOL)hasCamera;
+ (BOOL)hasFrontCamera;
+ (BOOL)hasRearCamera;
+ (BOOL)hasMicrophone;
+ (BOOL)hasGyroscope;
+ (BOOL)hasAccelerometer;
+ (BOOL)hasMagnetometer;
+ (BOOL)hasCompass;
+ (BOOL)canMakePhoneCall;
+ (BOOL)canSendSMS;
+ (BOOL)canSendEmail;

@end
