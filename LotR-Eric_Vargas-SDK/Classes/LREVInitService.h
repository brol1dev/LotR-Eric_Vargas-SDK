//
//  LREVInitService.h
//  LotR-Eric_Vargas-SDK
//
//  Created by Eric Vargas on 2/24/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LREVInitService : NSObject

@property (nonatomic, readonly) NSString *apiKey;

+ (LREVInitService *)sharedInstance;

- (void)setupAPIKey:(NSString *)apiKey;

@end

NS_ASSUME_NONNULL_END
