//
//  Omnia+Capability.m
//  OmniaDemo
//
//  Created by Khoa Pham on 8/23/14.
//  Copyright (c) 2014 Fantageek. All rights reserved.
//

#import "Omnia+Capability.h"

#import <CoreLocation/CoreLocation.h>
#import <CoreMotion/CoreMotion.h>
#import <MessageUI/MessageUI.h>
#import <AVFoundation/AVFoundation.h>

@implementation Omnia (Capability)

// http://stackoverflow.com/questions/3057325/weak-linking-check-if-a-class-exists-and-use-that-class
// http://stackoverflow.com/questions/4318708/checking-for-ios-location-services
+ (BOOL)isLocationServiceEnabled
{
    if ([CLLocationManager class]) {
        return [CLLocationManager locationServicesEnabled] &&
        ([CLLocationManager authorizationStatus] != kCLAuthorizationStatusDenied);

    }

    [NSException raise:@"CLLocationManager not available"
                format:nil];

    return NO;
}

// http://blog.mugunthkumar.com/coding/iphone-tutorial-better-way-to-check-capabilities-of-ios-devices/
// http://www.raywenderlich.com/42591/supporting-multiple-ios-versions-and-devices
+ (BOOL)hasCamera
{
    return [UIImagePickerController isSourceTypeAvailable: UIImagePickerControllerSourceTypeCamera];
}

+ (BOOL)hasFrontCamera
{
    return [UIImagePickerController isCameraDeviceAvailable:UIImagePickerControllerCameraDeviceFront];
}

+ (BOOL)hasRearCamera
{
    return [UIImagePickerController isCameraDeviceAvailable:UIImagePickerControllerCameraDeviceRear];
}

+ (BOOL)hasMicrophone
{
    [self checkAvailabilityForClass:[AVAudioSession class]];

    AVAudioSession *session = [AVAudioSession sharedInstance];

    if ([self isiOS6_0OrAbove]) {
        return session.inputAvailable;
    } else {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        return session.inputIsAvailable;
#pragma clang diagnostic pop
    }
}

+ (BOOL)hasGyroscope
{
    [self checkAvailabilityForClass:[CLLocationManager class]];

    CMMotionManager *motionManager = [[CMMotionManager alloc] init];
    return motionManager.gyroAvailable;
}

+ (BOOL)hasAccelerometer
{
    [self checkAvailabilityForClass:[CLLocationManager class]];

    CMMotionManager *motionManager = [[CMMotionManager alloc] init];
    return motionManager.accelerometerAvailable;
}

+ (BOOL)hasMagnetometer
{
    [self checkAvailabilityForClass:[CLLocationManager class]];

    CMMotionManager *motionManager = [[CMMotionManager alloc] init];
    return motionManager.magnetometerAvailable;
}

+ (BOOL)hasCompass
{
    [self checkAvailabilityForClass:[CLLocationManager class]];

    return [CLLocationManager headingAvailable];
}

+ (BOOL)canMakePhoneCall
{
    return [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"tel://"]];
}

+ (BOOL)canSendSMS
{
    [self checkAvailabilityForClass:[MFMessageComposeViewController class]];

    return [MFMessageComposeViewController canSendText];

    //return [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"sms://"]];
}

+ (BOOL)canSendEmail
{
    [self checkAvailabilityForClass:[MFMailComposeViewController class]];

    return [MFMailComposeViewController canSendMail];
}


@end
