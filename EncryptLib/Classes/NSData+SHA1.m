//
//  NSData+SHA1.m
//  EncryptLib
//
//  Created by sdfwds4 on 01/09/2021.
//  Copyright (c) 2021 sdfwds4. All rights reserved.
//

#import "NSData+SHA1.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSData (SHA1)

-(NSString*)sha1
{
    const char *bytes = (char *)[self bytes];
    
    unsigned char result[CC_SHA1_DIGEST_LENGTH];
    CC_SHA1(bytes, (int)strlen(bytes), result);
    
    NSMutableString *ret = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH*2];
    for(int i = 0; i<CC_SHA1_DIGEST_LENGTH; i++) {
        [ret appendFormat:@"%02x",result[i]];
    }
    return ret;
}

@end
