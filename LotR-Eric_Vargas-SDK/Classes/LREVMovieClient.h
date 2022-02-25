//
//  LREVMovieClient.h
//  LotR-Eric_Vargas-SDK
//
//  Created by Eric Vargas on 2/25/22.
//

#import <Foundation/Foundation.h>

#import "LREVMovie.h"

NS_ASSUME_NONNULL_BEGIN

@interface LREVMovieClient : NSObject

- (void)allMovies:(void (^)(NSArray<LREVMovie *> * _Nullable movies, NSError * _Nullable error))completion;

@end

NS_ASSUME_NONNULL_END
