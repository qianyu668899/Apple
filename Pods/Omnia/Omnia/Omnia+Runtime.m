//
//  Omnia+Runtime.m
//  OmniaDemo
//
//  Created by Khoa Pham on 8/23/14.
//  Copyright (c) 2014 Fantageek. All rights reserved.
//

#import "Omnia+Runtime.h"

@implementation Omnia (Runtime)

// http://stackoverflow.com/questions/3339722/how-to-check-ios-version
+ (NSString *)systemVersion
{
    return [[UIDevice currentDevice] systemVersion];
}

+ (BOOL)systemVersionEqualTo:(NSString *)version
{
    return [[self systemVersion] compare:version options:NSNumericSearch] == NSOrderedSame;
}

+ (BOOL)systemVersionGreaterThan:(NSString *)version
{
    return [[self systemVersion] compare:version options:NSNumericSearch] == NSOrderedDescending;
}

+ (BOOL)systemVersionGreaterThanOrEqualTo:(NSString *)version
{
    return [[self systemVersion] compare:version options:NSNumericSearch] != NSOrderedAscending;
}

+ (BOOL)systemVersionLessThan:(NSString *)version
{
    return [[self systemVersion] compare:version options:NSNumericSearch] == NSOrderedAscending;
}

+ (BOOL)systemVersionLessThanOrEqualTo:(NSString *)version
{
    return [[self systemVersion] compare:version options:NSNumericSearch] != NSOrderedDescending;
}

+ (BOOL)isiOS5_0OrAbove
{
    return [self systemVersionGreaterThanOrEqualTo:@"5.0"];
}

+ (BOOL)isiOS6_0OrAbove
{
    return [self systemVersionGreaterThanOrEqualTo:@"6.0"];
}

+ (BOOL)isiOS7_0OrAbove
{
    return [self systemVersionGreaterThanOrEqualTo:@"7.0"];
}

+ (BOOL)isiOS7_1OrAbove
{
    return [self systemVersionGreaterThanOrEqualTo:@"7.1"];
}

+ (BOOL)isiOS8_0OrAbove
{
    return [self systemVersionGreaterThanOrEqualTo:@"8.0"];
}

@end
