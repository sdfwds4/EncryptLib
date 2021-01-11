//
//  NSString+MD5.h
//  EncryptLib
//
//  Created by sdfwds4 on 01/09/2021.
//  Copyright (c) 2021 sdfwds4. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface NSString (MD5)

-(NSString*) md5;
-(NSString*) md5:(NSStringEncoding)encoding;

@end
