//
//  LREVModelParser.h
//  LotR-Eric_Vargas-SDK
//
//  Created by Eric Vargas on 2/25/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol LREVModelParser <NSObject>

/**
 * Populates the current instance with the values from the dictionary.
 */
- (void)parseDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
