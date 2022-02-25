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

/**
 * Makes requests to The One API to retrieve movies and its quotes.
 *
 * For the methods that allow queryParams, check https://the-one-api.dev/documentation to know what is allowed.
 */
@interface LREVMovieClient : NSObject

- (void)allMovies:(void (^)(NSArray<LREVMovie *> * _Nullable movies, NSError * _Nullable error))completion;

/**
 * queryParams: the format is in the form "param1=value1&param2=value2&paramN=valueN"
 */
- (void)allMoviesWithQueryParams:(NSString * _Nullable)params
                      completion:(void (^)(NSArray<LREVMovie *> * _Nullable movies, NSError * _Nullable error))completion;

- (void)movieById:(NSString *)movieId completion:(void (^)(LREVMovie *, NSError *))completion;
/**
 * queryParams: the format is in the form "param1=value1&param2=value2&paramN=valueN"
 */
- (void)movieById:(NSString *)movieId withQueryParams:(NSString * _Nullable)params
       completion:(void (^)(LREVMovie * _Nullable movie, NSError * _Nullable error))completion;

- (void)movieQuotesById:(NSString *)movieId
             completion:(void (^)(NSArray<LREVQuote *> * _Nullable quotes, NSError * _Nullable error))completion;

/**
 * queryParams: the format is in the form "param1=value1&param2=value2&paramN=valueN"
 */
- (void)movieQuotesById:(NSString *)movieId withQueryParams:(NSString * _Nullable)params
             completion:(void (^)(NSArray<LREVQuote *> * _Nullable quotes, NSError * _Nullable error))completion;

@end

NS_ASSUME_NONNULL_END
