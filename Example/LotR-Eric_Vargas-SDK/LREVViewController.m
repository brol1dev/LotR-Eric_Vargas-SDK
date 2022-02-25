//
//  LREVViewController.m
//  LotR-Eric_Vargas-SDK
//
//  Created by Eric Vargas on 02/24/2022.
//  Copyright (c) 2022 Eric Vargas. All rights reserved.
//

#import "LREVViewController.h"

@interface LREVViewController ()

@end

@implementation LREVViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  LREVRequestClient *client = [[LREVRequestClient alloc] initWithApiKey:[LREVInitService sharedInstance].apiKey];
  [client requestEndpoint:@"movie/5cd95395de30eff6ebccde5c" completionHandler:^(NSDictionary *json, NSError *error) {
    NSLog(@"error: %@", error);
    NSLog(@"json: %@", json);
  }];
}

@end
