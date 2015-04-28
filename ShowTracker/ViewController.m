//
//  ViewController.m
//  ShowTracker
//
//  Created by Yu QIAN on 2015-04-28.
//  Copyright (c) 2015 Yu QIAN. All rights reserved.
//

#import "ViewController.h"
#import "TraktAPIClient.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    TraktAPIClient *client = [TraktAPIClient sharedClient];
    
    [client getShowsForDate:[NSDate date]
                   username:@"rwtestuser"
               numberOfDays:3
                    success:^(NSURLSessionDataTask *task, id responseObject) {
                        NSLog(@"Success -- %@", responseObject);
                    }
                    failure:^(NSURLSessionDataTask *task, NSError *error) {
                        NSLog(@"Failure -- %@", error);
                    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
