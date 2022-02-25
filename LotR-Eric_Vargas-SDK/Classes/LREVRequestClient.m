//
//  LREVRequestClient.m
//  LotR-Eric_Vargas-SDK
//
//  Created by Eric Vargas on 2/24/22.
//

#import "LREVRequestClient.h"

NSString *const kBaseUrl = @"https://the-one-api.dev/v2/";

@implementation LREVRequestClient {
  NSURL *_baseUrl;
  NSString *_apiKey;
}

- (instancetype)initWithApiKey:(NSString *)apiKey {
  self = [super init];
  if (self) {
    _apiKey = apiKey;
    _baseUrl = [NSURL URLWithString:kBaseUrl];
  }
  return self;
}

- (void)requestEndpoint:(NSString *)endpoint completionHandler:(void (^)(NSDictionary *json, NSError *error))completion {
  NSURL *url = [NSURL URLWithString:endpoint relativeToURL:_baseUrl];
  NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];

  [request setValue:[NSString stringWithFormat:@"Bearer %@", _apiKey] forHTTPHeaderField:@"Authorization"];

  NSURLSessionConfiguration *sessionConfig = [NSURLSessionConfiguration defaultSessionConfiguration];
  NSURLSession *session = [NSURLSession sessionWithConfiguration:sessionConfig];
  NSURLSessionTask *sessionTask = [session dataTaskWithRequest:request
                                             completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
    if (error) {
      completion(nil, error);
      return;
    }
    
    NSError *jsonError;
    NSDictionary *jsonResponse = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&jsonError];

    if (jsonError) {
      completion(nil, jsonError);
      return;
    }

    NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
    if (httpResponse.statusCode >= 400 && httpResponse.statusCode < 600) {
      NSString *errorMsg = jsonResponse[@"message"];
      error = [NSError errorWithDomain:NSURLErrorDomain code:httpResponse.statusCode userInfo:@{@"message": errorMsg}];
      completion(nil, error);
      return;
    }

    completion(jsonResponse, nil);
  }];
  [sessionTask resume];
}

@end
