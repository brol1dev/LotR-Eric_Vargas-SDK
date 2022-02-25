//
//  LREVQuote.h
//  LotR-Eric_Vargas-SDK
//
//  Created by Eric Vargas on 2/25/22.
//

#import <Foundation/Foundation.h>

#import "LREVModelParser.h"

NS_ASSUME_NONNULL_BEGIN

@interface LREVQuote : NSObject <LREVModelParser>

@property (nonatomic, readonly) NSString *characterId;
@property (nonatomic, readonly) NSString *dialog;
@property (nonatomic, readonly) NSString *quoteId;
@property (nonatomic, readonly) NSString *movieId;

@end

NS_ASSUME_NONNULL_END
