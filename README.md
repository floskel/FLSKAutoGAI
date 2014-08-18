# FLSKAutoGAI

[![CI Status](http://img.shields.io/travis/floskel/FLSKAutoGAI.svg?style=flat)](https://travis-ci.org/floskel/FLSKAutoGAI)
[![Version](https://img.shields.io/cocoapods/v/FLSKAutoGAI.svg?style=flat)](http://cocoadocs.org/docsets/FLSKAutoGAI)
[![License](https://img.shields.io/cocoapods/l/FLSKAutoGAI.svg?style=flat)](http://cocoadocs.org/docsets/FLSKAutoGAI)
[![Platform](https://img.shields.io/cocoapods/p/FLSKAutoGAI.svg?style=flat)](http://cocoadocs.org/docsets/FLSKAutoGAI)

## Usage

UIViewControllers that adopt the 

    FLSKAutoGAI
protocol will automatically be tracked in GoogleAnalytics. The ViewController's class name will be used as tracked screen name per default. Implement the method

    -(NSString*)screenName { 
        return @"Alternative Tracked Screen Name";
    }
    
to provide another tracked screen name.

## Installation

FLSKAutoGAI is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "FLSKAutoGAI"

This pod will also install 'GoogleAnalytics-iOS-SDK 3.0'

## License

FLSKAutoGAI is available under the MIT license. See the LICENSE file for more info.

