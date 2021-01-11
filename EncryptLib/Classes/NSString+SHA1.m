//
//  NSString+SHA1.m
//  EncryptLib
//
//  Created by sdfwds4 on 01/09/2021.
//  Copyright (c) 2021 sdfwds4. All rights reserved.
//

#import "NSString+SHA1.h"
#import "NSData+SHA1.h"

@implementation NSString (SHA1)

-(NSString*)sha1
{
    NSData *stringBytes = [self dataUsingEncoding: NSUTF8StringEncoding];
    return [stringBytes sha1];
}

-(NSString*)sha1:(NSStringEncoding)encoding
{
    NSData *stringBytes = [self dataUsingEncoding: encoding];
    return [stringBytes sha1];
}

@end
