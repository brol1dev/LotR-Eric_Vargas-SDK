//
//  LREVMovie.h
//  LotR-Eric_Vargas-SDK
//
//  Created by Eric Vargas on 2/25/22.
//

#import <Foundation/Foundation.h>
#import "LREVModelParser.h"

NS_ASSUME_NONNULL_BEGIN

@interface LREVMovie : NSObject <LREVModelParser>

@property (nonatomic, readonly) NSUInteger academyAwardNominations;
@property (nonatomic, readonly) NSUInteger academyAwardWins;
@property (nonatomic, readonly) NSUInteger boxOfficeRevenueInMillions;
@property (nonatomic, readonly) NSUInteger budgetInMillions;
@property (nonatomic, readonly) NSUInteger rottenTomatoesScore;
@property (nonatomic, readonly) NSUInteger runtimeInMinutes;
@property (nonatomic, readonly) NSString *idCode;
@property (nonatomic, readonly) NSString *name;

@end

NS_ASSUME_NONNULL_END
