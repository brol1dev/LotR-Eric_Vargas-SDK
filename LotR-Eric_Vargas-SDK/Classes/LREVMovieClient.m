//
//  LREVMovieClient.m
//  LotR-Eric_Vargas-SDK
//
//  Created by Eric Vargas on 2/25/22.
//

#import "LREVMovieClient.h"

#import "LREVInitService.h"
#import "LREVRequestClient.h"

NSString *const kMoviesArray = @"docs";

@implementation LREVMovieClient {
  LREVRequestClient *_requestClient;
}

- (instancetype)init {
  self = [super init];
  if (self) {
    _requestClient = [[LREVRequestClient alloc] initWithApiKey:[LREVInitService sharedInstance].apiKey];
  }
  return self;
}

- (void)allMovies:(void (^)(NSArray<LREVMovie *> *, NSError *))completion {
  [_requestClient requestEndpoint:@"movie" completionHandler:^(NSDictionary *json, NSError *error) {
    if (error) {
      completion(nil, error);
      // Log error.
      return;
    }

    NSArray<NSDictionary *> *moviesJson = json[kMoviesArray];
    NSMutableArray<LREVMovie *> *movies = [[NSMutableArray alloc] initWithCapacity:moviesJson.count];
    for (NSDictionary *movieDict in moviesJson) {
      LREVMovie *movie = [[LREVMovie alloc] init];
      [movie parseDictionary:movieDict];
      [movies addObject:movie];
    }
    completion(movies, nil);
  }];
}

@end
