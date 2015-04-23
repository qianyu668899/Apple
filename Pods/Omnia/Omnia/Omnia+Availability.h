//
//  Omnia+Availability.h
//  OmniaDemo
//
//  Created by Khoa Pham on 8/23/14.
//  Copyright (c) 2014 Fantageek. All rights reserved.
//

#import "Omnia.h"

@interface Omnia (Availability)

+ (void)checkAvailabilityForClass:(Class)kClass;
+ (void)checkAvailabilityForString:(NSString *)string;

@end
