//
//  LREVQuote.m
//  LotR-Eric_Vargas-SDK
//
//  Created by Eric Vargas on 2/25/22.
//

#import "LREVQuote.h"

NSString *const kQuoteId = @"_id";
NSString *const kQuoteCharacterId = @"character";
NSString *const kQuoteDialog = @"dialog";
NSString *const kQuoteMovieId = @"movie";

@implementation LREVQuote

- (void)parseDictionary:(NSDictionary *)dictionary {
  _quoteId = dictionary[kQuoteId];
  _characterId = dictionary[kQuoteCharacterId];
  _dialog = dictionary[kQuoteDialog];
  _movieId = dictionary[kQuoteMovieId];
}

- (NSString *)description {
  return [NSString stringWithFormat:@"Quote(id: %@): %@", _quoteId, _dialog];
}

@end
