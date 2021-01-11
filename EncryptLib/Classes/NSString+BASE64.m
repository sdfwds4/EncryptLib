//
//  NSString+BASE64.m
//  EncryptLib
//
//  Created by sdfwds4 on 01/09/2021.
//  Copyright (c) 2021 sdfwds4. All rights reserved.
//

#import "NSString+BASE64.h"
#import "NSData+BASE64.h"

@implementation NSString (BASE64)

-(NSString*)base64Decode
{
    NSData *stringBytes = [self dataUsingEncoding: NSUTF8StringEncoding];
    return [stringBytes base64Decode];
}

-(NSString*)base64Decode:(NSStringEncoding)encoding
{
    NSData *stringBytes = [self dataUsingEncoding: encoding];
    return [stringBytes base64Decode];
}

-(NSString*)base64Encode
{
    NSData *stringBytes = [self dataUsingEncoding: NSUTF8StringEncoding];
    return [stringBytes base64Encode];
}

-(NSString*)base64Encode:(NSStringEncoding)encoding
{
    NSData *stringBytes = [self dataUsingEncoding: encoding];
    return [stringBytes base64Encode];
}
@end
