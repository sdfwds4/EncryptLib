//
//  NSString+SHA512.m
//  EncryptLib
//
//  Created by sdfwds4 on 01/09/2021.
//  Copyright (c) 2021 sdfwds4. All rights reserved.
//

#import "NSString+SHA512.h"
#import "NSData+SHA512.h"

@implementation NSString (SHA512)

-(NSString*)sha512
{
    NSData *stringBytes = [self dataUsingEncoding: NSUTF8StringEncoding];
    return [stringBytes sha512];
}

-(NSString*)sha512:(NSStringEncoding)encoding
{
    NSData *stringBytes = [self dataUsingEncoding: encoding];
    return [stringBytes sha512];
}

@end
