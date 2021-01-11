//
//  NSString+SHA512.h
//  EncryptLib
//
//  Created by sdfwds4 on 01/09/2021.
//  Copyright (c) 2021 sdfwds4. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface NSString (SHA512)

-(NSString*) sha512;
-(NSString*) sha512:(NSStringEncoding)encoding;

@end
