//
//  EncryptLibTests.m
//  EncryptLibTests
//
//  Created by sdfwds4 on 01/09/2021.
//  Copyright (c) 2021 sdfwds4. All rights reserved.
//

@import XCTest;
#import <EncryptLib/EncryptLib.h>


@interface Tests : XCTestCase

@end

@implementation Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testNSData
{
    /*
     Validation:
     https://tool.oschina.net/encrypt
     */
    
    NSString * str1 = @"123456";
    NSData *data1 = [str1 dataUsingEncoding:NSUTF8StringEncoding];
    NSString * str2 = @"世界，你好！";
    NSData *data2 = [str2 dataUsingEncoding:NSUTF8StringEncoding];

    // base64
    XCTAssert([[data1 base64Encode] isEqualToString:@"MTIzNDU2"]);
    XCTAssert([[data2 base64Encode] isEqualToString:@"5LiW55WM77yM5L2g5aW977yB"]);
    
    // crc32
    XCTAssert([[data1 crc32] isEqualToString:@"0972d361"]);
    XCTAssert([[data2 crc32] isEqualToString:@"fa30a80a"]);

    // md5
    XCTAssert([[data1 md5] isEqualToString:@"e10adc3949ba59abbe56e057f20f883e"]);
    XCTAssert([[data2 md5] isEqualToString:@"d0381cf8c08c963df912d20978a90ef8"]);
    
    // sha1
    XCTAssert([[data1 sha1] isEqualToString:@"7c4a8d09ca3762af61e59520943dc26494f8941b"]);
    XCTAssert([[data2 sha1] isEqualToString:@"3203065eb893a28c39fe067a4f9953c4f6abceb8"]);
    
    // sha256
    XCTAssert([[data1 sha256] isEqualToString:@"8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92"]);
    XCTAssert([[data2 sha256] isEqualToString:@"69d2d0e79b6ae2dd6631d5d52e04c9e63f6bfb31ca761cd136a9a329c71e90aa"]);
    
    // sha512
    XCTAssert([[data1 sha512] isEqualToString:@"ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413"]);
    XCTAssert([[data2 sha512] isEqualToString:@"6797d8a96231994a667deb5953d54cf4656bd6f2567ff87f9b61e3f22ee1aa3d6a4e1f8820ffbadbc8343627240ff0ab927c0bfeb5e95418d45f3980aa5d8eb4"]);
}

- (void)testNSString
{
    /*
     Validation:
     https://tool.oschina.net/encrypt
     */
    
    NSString * str1 = @"123456";
    NSString * str2 = @"世界，你好！";

    // base64
    XCTAssert([[str1 base64Encode] isEqualToString:@"MTIzNDU2"]);
    XCTAssert([[str2 base64Encode] isEqualToString:@"5LiW55WM77yM5L2g5aW977yB"]);
    XCTAssert([[@"MTIzNDU2" base64Decode] isEqualToString:@"123456"]);
    XCTAssert([[@"5LiW55WM77yM5L2g5aW977yB" base64Decode] isEqualToString:@"世界，你好！"]);

    // crc32
    XCTAssert([[str1 crc32] isEqualToString:@"0972d361"]);
    XCTAssert([[str2 crc32] isEqualToString:@"fa30a80a"]);

    // md5
    XCTAssert([[str1 md5] isEqualToString:@"e10adc3949ba59abbe56e057f20f883e"]);
    XCTAssert([[str2 md5] isEqualToString:@"d0381cf8c08c963df912d20978a90ef8"]);
    
    // sha1
    XCTAssert([[str1 sha1] isEqualToString:@"7c4a8d09ca3762af61e59520943dc26494f8941b"]);
    XCTAssert([[str2 sha1] isEqualToString:@"3203065eb893a28c39fe067a4f9953c4f6abceb8"]);
    
    // sha256
    XCTAssert([[str1 sha256] isEqualToString:@"8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92"]);
    XCTAssert([[str2 sha256] isEqualToString:@"69d2d0e79b6ae2dd6631d5d52e04c9e63f6bfb31ca761cd136a9a329c71e90aa"]);
    
    // sha512
    XCTAssert([[str1 sha512] isEqualToString:@"ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413"]);
    XCTAssert([[str2 sha512] isEqualToString:@"6797d8a96231994a667deb5953d54cf4656bd6f2567ff87f9b61e3f22ee1aa3d6a4e1f8820ffbadbc8343627240ff0ab927c0bfeb5e95418d45f3980aa5d8eb4"]);
}

@end

