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
//  [client allMovies:^(NSArray<LREVMovie *> *movies, NSError *error) {
//    NSLog(@"movies: %@", movies);
//  }];
//  [client allMoviesWithQueryParams:@"limit=3&sort=name:asc" completion:^(NSArray<LREVMovie *> * _Nullable movies, NSError * _Nullable error) {
//    NSLog(@"error: %@", error);
//    NSLog(@"movies: %@", movies);
//  }];
//  [client movieById:@"5cd95395de30eff6ebccde5b" completion:^(LREVMovie *movie, NSError *error) {
//    NSLog(@"error: %@", error);
//    NSLog(@"movie: %@", movie);
//  }];
//  [client movieQuotesById:@"5cd95395de30eff6ebccde5b" completion:^(NSArray<LREVQuote *> * _Nullable quotes, NSError * _Nullable error) {
//    NSLog(@"error: %@", error);
//    NSLog(@"quotes: %@", quotes);
//  }];
  [client movieQuotesById:@"5cd95395de30eff6ebccde5b" withQueryParams:@"limit=10&sort=character:desc&offset=1" completion:^(NSArray<LREVQuote *> * _Nullable quotes, NSError * _Nullable error) {
    NSLog(@"error: %@", error);
    NSLog(@"quotes: %@", quotes);
  }];
}

@end
