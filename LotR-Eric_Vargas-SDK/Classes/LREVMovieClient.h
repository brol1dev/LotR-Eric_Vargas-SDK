//
//  LREVMovieClient.h
//  LotR-Eric_Vargas-SDK
//
//  Created by Eric Vargas on 2/25/22.
//

#import <Foundation/Foundation.h>

#import "LREVQuote.h"
#import "LREVMovie.h"

NS_ASSUME_NONNULL_BEGIN

@interface LREVMovieClient : NSObject

- (void)allMovies:(void (^)(NSArray<LREVMovie *> * _Nullable movies, NSError * _Nullable error))completion;

- (void)allMoviesWithQueryParams:(NSString * _Nullable)params
                      completion:(void (^)(NSArray<LREVMovie *> * _Nullable movies, NSError * _Nullable error))completion;

- (void)movieById:(NSString *)movieId withQueryParams:(NSString * _Nullable)params
       completion:(void (^)(LREVMovie * _Nullable movie, NSError * _Nullable error))completion;

- (void)movieQuotesById:(NSString *)movieId
             completion:(void (^)(NSArray<LREVQuote *> * _Nullable quotes, NSError * _Nullable error))completion;

- (void)movieQuotesById:(NSString *)movieId withQueryParams:(NSString * _Nullable)params
             completion:(void (^)(NSArray<LREVQuote *> * _Nullable quotes, NSError * _Nullable error))completion;

@end

NS_ASSUME_NONNULL_END
