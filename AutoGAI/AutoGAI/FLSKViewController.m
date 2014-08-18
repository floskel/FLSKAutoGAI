//
//  FLSKViewController.m
//  AutoGAI
//
//  Created by Karlo Kristensen on 14/08/14.
//  Copyright (c) 2014 floskel. All rights reserved.
//

#import "FLSKViewController.h"
#import <FLSKAutoGAI.h>

@interface FLSKViewController () <FLSKAutoGAI>

@end

@implementation FLSKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}


- (NSString *)screenName {
    return @"Example View Controller";
}

@end
