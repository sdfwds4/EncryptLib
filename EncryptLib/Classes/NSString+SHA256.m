//
//  NSString+SHA256.m
//  EncryptLib
//
//  Created by sdfwds4 on 01/09/2021.
//  Copyright (c) 2021 sdfwds4. All rights reserved.
//

#import "NSString+SHA256.h"
#import "NSData+SHA256.h"

@implementation NSString (SHA256)

-(NSString*)sha256
{
    NSData *stringBytes = [self dataUsingEncoding: NSUTF8StringEncoding];
    return [stringBytes sha256];
}

-(NSString*)sha256:(NSStringEncoding)encoding
{
    NSData *stringBytes = [self dataUsingEncoding: encoding];
    return [stringBytes sha256];
}

@end
