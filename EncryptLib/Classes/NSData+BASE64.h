//
//  NSData+BASE64.h
//  EncryptLib
//
//  Created by sdfwds4 on 01/09/2021.
//  Copyright (c) 2021 sdfwds4. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface NSData (BASE64)

-(NSString*) base64Decode;
-(NSString*) base64Encode;

@end
