//
//  Omnia+System.m
//  OmniaDemo
//
//  Created by Khoa Pham on 8/23/14.
//  Copyright (c) 2014 Fantageek. All rights reserved.
//

#import "Omnia+System.h"
#import <CoreTelephony/CTCallCenter.h>
#import <CoreTelephony/CTCall.h>
#import <AVFoundation/AVFoundation.h>

@implementation Omnia (System)

// http://stackoverflow.com/questions/10942334/ios-how-to-check-if-currently-on-phone-call
+ (BOOL)isOnPhoneCall
{
    [self checkAvailabilityForClass:[CTCallCenter class]];
    [self checkAvailabilityForString:CTCallStateConnected];

    CTCallCenter *callCenter = [[CTCallCenter alloc] init];
    for (CTCall *call in callCenter.currentCalls)  {
        if (call.callState == CTCallStateConnected) {
            return YES;
        }
    }
    return NO;
}

+ (BOOL)isAirplaneModeEnabled
{
    // TODO
    return NO;
}

+ (BOOL)isSilentModeEnabled
{
    // TODO
    return NO;
}

+ (BOOL)hasHeadphonePlugged
{
    // TODO
    return NO;
}

// http://stackoverflow.com/questions/7255006/get-system-volume-ios
+ (CGFloat)systemVolume
{
    [self checkAvailabilityForClass:[AVAudioSession class]];

    return [[AVAudioSession sharedInstance] outputVolume];
}

@end
