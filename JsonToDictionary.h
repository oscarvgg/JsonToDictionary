//
//  JsonToDictionary.h
//
//  Created by Oscar Vicente Gonzalez Greco on 1/22/13.
//  Copyright (c) 2013 Oscar Vicente Gonzalez Greco. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JsonToDictionary : NSObject

+ (NSDictionary *)dictionaryFromJsonString:(NSString *)stringJson;
+ (NSString *)jsonStringFromDictionary:(NSDictionary *)dictionary;

@end

@interface NSDictionary (Json)

- (NSString *)jsonString;

@end

@interface NSString (Json)

- (NSDictionary *)jsonDictionary;

@end

