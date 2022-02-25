//
//  LREVInitService.m
//  LotR-Eric_Vargas-SDK
//
//  Created by Eric Vargas on 2/24/22.
//

#import "LREVInitService.h"

static LREVInitService *service;

@implementation LREVInitService

+ (LREVInitService *)sharedInstance {
  static dispatch_once_t dispatchToken;
  dispatch_once(&dispatchToken, ^{
    @autoreleasepool {
      service = [[LREVInitService alloc] init];
    }
  });
  return service;
}

- (void)setupAPIKey:(NSString *)apiKey {
  _apiKey = apiKey;
}

@end
