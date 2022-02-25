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
  LREVMovieClient *client = [[LREVMovieClient alloc] init];
  [client allMovies:^(NSArray<LREVMovie *> *movies, NSError *error) {
    NSLog(@"movies: %@", movies);
  }];
}

@end
