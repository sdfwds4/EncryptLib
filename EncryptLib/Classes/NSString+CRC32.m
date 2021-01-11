//
//  NSString+CRC32.m
//  EncryptLib
//
//  Created by sdfwds4 on 01/09/2021.
//  Copyright (c) 2021 sdfwds4. All rights reserved.
//

#import "NSString+CRC32.h"
#import "NSData+CRC32.h"

@implementation NSString (CRC32)

-(NSString*)crc32
{
    NSData *stringBytes = [self dataUsingEncoding: NSUTF8StringEncoding];
    return [stringBytes crc32];
}

-(NSString*)crc32:(NSStringEncoding)encoding
{
    NSData *stringBytes = [self dataUsingEncoding: encoding];
    return [stringBytes crc32];
}

@end
