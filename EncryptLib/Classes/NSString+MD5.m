//
//  NSString+MD5.m
//  EncryptLib
//
//  Created by sdfwds4 on 01/09/2021.
//  Copyright (c) 2021 sdfwds4. All rights reserved.
//

#import "NSString+MD5.h"
#import "NSData+MD5.h"

@implementation NSString (MD5)

-(NSString*)md5
{
    NSData *stringBytes = [self dataUsingEncoding: NSUTF8StringEncoding];
    return [stringBytes md5];
}

-(NSString*)md5:(NSStringEncoding)encoding
{
    NSData *stringBytes = [self dataUsingEncoding: encoding];
    return [stringBytes md5];
}

@end
