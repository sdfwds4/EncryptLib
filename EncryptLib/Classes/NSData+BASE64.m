//
//  NSData+BASE64.m
//  EncryptLib
//
//  Created by sdfwds4 on 01/09/2021.
//  Copyright (c) 2021 sdfwds4. All rights reserved.
//

#import "NSData+BASE64.h"

@implementation NSData (BASE64)

-(NSString*)base64Decode
{
    NSData *data = [[NSData alloc]initWithBase64EncodedData:self options:0];
    return [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
}

-(NSString*)base64Encode
{
    return [self base64EncodedStringWithOptions:0];
}

@end
