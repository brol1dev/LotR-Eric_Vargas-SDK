//
//  LREVRequestClient.h
//  LotR-Eric_Vargas-SDK
//
//  Created by Eric Vargas on 2/24/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LREVRequestClient : NSObject

- (instancetype)initWithApiKey:(NSString *)apiKey;

- (void)requestEndpoint:(NSString *)endpoint completionHandler:(void (^)(NSDictionary * _Nullable json, NSError * _Nullable error))completion;

@end

NS_ASSUME_NONNULL_END
