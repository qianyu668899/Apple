//
//  Omnia+UI.m
//  OmniaDemo
//
//  Created by Khoa Pham on 8/23/14.
//  Copyright (c) 2014 Fantageek. All rights reserved.
//

#import "Omnia+UI.h"

@implementation Omnia (UI)

#pragma mark - UI
// http://www.idev101.com/code/User_Interface/keyboard.html
+ (CGFloat)defaultKeyboardHeight
{
    if ([self isiPhone]) {
        if ([self isPortrait]) {
            return 216;
        } else {
            return 162;
        }
    } else {
        if ([self isPortrait]) {
            return 264;
        } else {
            return 352;
        }
    }
}

// http://www.idev101.com/code/User_Interface/sizes.html
// https://developer.apple.com/library/ios/documentation/userexperience/conceptual/transitionguide/Bars.html
// http://ivomynttinen.com/blog/the-ios-7-design-cheat-sheet/
+ (CGFloat)defaultTabbarHeight
{
    if ([self isiPad] && [self isiOS7_0OrAbove]) {
        return 56;
    }

    return 49;
}

@end
