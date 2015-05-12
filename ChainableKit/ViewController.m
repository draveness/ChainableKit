//
//  ViewController.m
//  ChainableKit
//
//  Created by apple on 15/5/12.
//  Copyright (c) 2015年 DeltaX. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Chainable.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.make.backgroundColor([UIColor whiteColor]);
    UIColor *blue = [UIColor blueColor];
    UIColor *red = [UIColor redColor];
    UILabel.make
        .backgroundColor(red)
        .frame(100, 100, 100, 100)
        .textAlignment(NSTextAlignmentCenter)
        .textColor(blue)
        .text(@"Hello World")
        .lineBreakMode(NSLineBreakByClipping)
        .numberOfLines(0)
        .addToSuperview(self.view);

}

@end
