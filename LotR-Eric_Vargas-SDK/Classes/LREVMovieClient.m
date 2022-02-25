//
//  LREVMovieClient.m
//  LotR-Eric_Vargas-SDK
//
//  Created by Eric Vargas on 2/25/22.
//

#import "LREVMovieClient.h"

#import "LREVInitService.h"
#import "LREVRequestClient.h"

NSString *const kRootKey = @"docs";

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
  [self allMoviesWithQueryParams:nil completion:completion];
}

- (void)allMoviesWithQueryParams:(NSString *)params
                      completion:(void (^)(NSArray<LREVMovie *> * _Nullable, NSError * _Nullable))completion {
  NSString *fullEndpoint = @"movie";
  if (params) {
    fullEndpoint = [fullEndpoint stringByAppendingFormat:@"?%@", params];
  }
  [_requestClient requestEndpoint:fullEndpoint
                completionHandler:^(NSDictionary *json, NSError *error) {
    if (error) {
      completion(nil, error);
      // Log error.
      return;
    }

    NSArray<NSDictionary *> *moviesJson = json[kRootKey];
    NSMutableArray<LREVMovie *> *movies = [[NSMutableArray alloc] initWithCapacity:moviesJson.count];
    for (NSDictionary *movieDict in moviesJson) {
      LREVMovie *movie = [[LREVMovie alloc] init];
      [movie parseDictionary:movieDict];
      [movies addObject:movie];
    }
    completion(movies, nil);
  }];
}

- (void)movieById:(NSString *)movieId completion:(void (^)(LREVMovie *, NSError *))completion {
  [self movieById:movieId withQueryParams:nil completion:completion];
}

- (void)movieById:(NSString *)movieId withQueryParams:(NSString *)params
       completion:(void (^)(LREVMovie * _Nullable, NSError * _Nullable))completion {
  NSString *fullEndpoint = [NSString stringWithFormat:@"movie/%@", movieId];
  if (params) {
    fullEndpoint = [fullEndpoint stringByAppendingFormat:@"?%@", params];
  }
  [_requestClient requestEndpoint:fullEndpoint
                completionHandler:^(NSDictionary *json, NSError *error) {
    if (error) {
      completion(nil, error);
      // Log error.
      return;
    }

    NSArray<NSDictionary *> *moviesJson = json[kRootKey];
    LREVMovie *movie = [[LREVMovie alloc] init];
    [movie parseDictionary:moviesJson[0]];
    completion(movie, nil);
  }];
}

- (void)movieQuotesById:(NSString *)movieId
             completion:(nonnull void (^)(NSArray<LREVQuote *> *, NSError *))completion {
  [self movieQuotesById:movieId withQueryParams:nil completion:completion];
}

- (void)movieQuotesById:(NSString *)movieId withQueryParams:(NSString *)params
             completion:(void (^)(NSArray<LREVQuote *> * _Nullable, NSError * _Nullable))completion {
  NSString *fullEndpoint = [NSString stringWithFormat:@"movie/%@/quote", movieId];
  if (params) {
    fullEndpoint = [fullEndpoint stringByAppendingFormat:@"?%@", params];
  }
  [_requestClient requestEndpoint:fullEndpoint completionHandler:^(NSDictionary *json, NSError *error) {
    if (error) {
      completion(nil, error);
      // Log error.
      return;
    }

    NSArray<NSDictionary *> *quotesJson = json[kRootKey];
    NSMutableArray<LREVQuote *> *quotes = [[NSMutableArray alloc] initWithCapacity:quotesJson.count];
    for (NSDictionary *quoteDict in quotesJson) {
      LREVQuote *quote = [[LREVQuote alloc] init];
      [quote parseDictionary:quoteDict];
      [quotes addObject:quote];
    }
    completion(quotes, nil);
  }];
}

@end
