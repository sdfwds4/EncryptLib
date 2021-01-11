//
//  NSString+BASE64.h
//  EncryptLib
//
//  Created by sdfwds4 on 01/09/2021.
//  Copyright (c) 2021 sdfwds4. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface NSString (BASE64)

-(NSString*) base64Decode;
-(NSString*) base64Decode:(NSStringEncoding)encoding;
-(NSString*) base64Encode;
-(NSString*) base64Encode:(NSStringEncoding)encoding;

@end
