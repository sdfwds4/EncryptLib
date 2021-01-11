# EncryptLib

[![CI Status](https://img.shields.io/travis/sdfwds4/EncryptLib.svg?style=flat)](https://travis-ci.org/sdfwds4/EncryptLib)
[![Version](https://img.shields.io/cocoapods/v/EncryptLib.svg?style=flat)](https://cocoapods.org/pods/EncryptLib)
[![License](https://img.shields.io/cocoapods/l/EncryptLib.svg?style=flat)](https://cocoapods.org/pods/EncryptLib)
[![Platform](https://img.shields.io/cocoapods/p/EncryptLib.svg?style=flat)](https://cocoapods.org/pods/EncryptLib)

Object-c NSData &amp; NSString encryptation for iOS &amp; Mac. EncryptLib supports CRC 32, MD5, BASE 64, SHA-1, SHA-256 and SHA-512.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first. And than see the Tests.m file.

## Requirements

## Installation

EncryptLib is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'EncryptLib'
```

And then run:

```
pod install
```

## Usage

After installing the cocoapod into your project import EncryptLib with Objective C 
```objc
#import <EncryptLib/EncryptLib.h>.
```

And then
```objc
NSString * str1 = @"123456";
NSString * crcText = [str1 crc32];
```

## Author

sdfwds4, sdfwds4@163.com

## License

EncryptLib is available under the MIT license. See the LICENSE file for more info.
