//
//  Omnia+Availability.m
//  OmniaDemo
//
//  Created by Khoa Pham on 8/23/14.
//  Copyright (c) 2014 Fantageek. All rights reserved.
//

#import "Omnia+Availability.h"

@implementation Omnia (Availability)

+ (void)checkAvailabilityForClass:(Class)kClass
{
    if (!kClass) {
        NSString *raiseString = [NSString stringWithFormat:@"%@ not available", NSStringFromClass(kClass)];
        [NSException raise:raiseString
                    format:nil];
    }
}

+ (void)checkAvailabilityForString:(NSString *)string
{
    if (!&string) {
        [NSException raise:@"Can't resolve string"
                    format:nil];
    }
}


@end
