//
//  JsonToDictionary.m
//
//  Created by Oscar Vicente Gonzalez Greco on 1/22/13.
//  Copyright (c) 2013 Oscar Vicente Gonzalez Greco. All rights reserved.
//

#import "JsonToDictionary.h"

@implementation JsonToDictionary

+ (NSDictionary *)dictionaryFromJsonString:(NSString *)stringJson
{
    NSData *data = [stringJson dataUsingEncoding:NSUTF8StringEncoding];
    
    NSError *error;
    
    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:data
                                                                   options:0
                                                                     error:&error];
    
    if (error)
    {
        NSLog(@"Error al leer json: %@", [error description]);
    }
    
    return jsonDictionary;
}


+ (NSString *)jsonStringFromDictionary:(NSDictionary *)dictionary
{
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dictionary
                                                       options:NSJSONWritingPrettyPrinted
                                                         error:&error];
    if (error)
    {
        NSLog(@"Error: %@", error);
    }
    
    
    NSString *jsonString = [[NSString alloc] initWithData:jsonData
                                                 encoding:NSUTF8StringEncoding];
    
    return jsonString;
}

@end

@implementation NSDictionary (Additions)

- (NSString *)jsonString {
    return [JsonToDictionary jsonStringFromDictionary:self];
}

@end

@implementation NSString (Additions)

- (NSDictionary *)jsonDictionary {
    return [JsonToDictionary dictionaryFromJsonString:self];
}
