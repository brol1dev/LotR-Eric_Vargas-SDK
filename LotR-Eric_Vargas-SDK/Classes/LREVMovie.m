//
//  LREVMovie.m
//  LotR-Eric_Vargas-SDK
//
//  Created by Eric Vargas on 2/25/22.
//

#import "LREVMovie.h"

NSString *const kMovieId = @"_id";
NSString *const kMovieAcademyAwardNominations = @"academyAwardNominations";
NSString *const kMovieAcademyAwardWins = @"academyAwardWins";
NSString *const kMovieBoxOfficeRevenueInMillions = @"boxOfficeRevenueInMillions";
NSString *const kMovieBudgetInMillions = @"budgetInMillions";
NSString *const kMovieName = @"name";
NSString *const kMovieRottenTomatoesScore = @"rottenTomatoesScore";
NSString *const kMovieRuntimeInMinutes = @"runtimeInMinutes";

@implementation LREVMovie

- (void)parseDictionary:(NSDictionary *)dictionary {
  _idCode = dictionary[kMovieId];
  _academyAwardNominations = [dictionary[kMovieAcademyAwardNominations] unsignedIntegerValue];
  _academyAwardWins = [dictionary[kMovieAcademyAwardWins] unsignedIntegerValue];
  _boxOfficeRevenueInMillions = [dictionary[kMovieBoxOfficeRevenueInMillions] unsignedIntegerValue];
  _budgetInMillions = [dictionary[kMovieBudgetInMillions] unsignedIntegerValue];
  _name = dictionary[kMovieName];
  _rottenTomatoesScore = [dictionary[kMovieRottenTomatoesScore] unsignedIntegerValue];
  _runtimeInMinutes = [dictionary[kMovieRuntimeInMinutes] unsignedIntegerValue];
}

- (NSString *)description {
  return [NSString stringWithFormat:@"Movie(id: %@): %@", _idCode, _name];
}

@end
