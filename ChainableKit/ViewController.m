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
    UIView.make
        .origin(100, 100)
        .size(50, 50)
        .backgroundColor(blue)
        .addToSuperview(self.view);

    UILabel.make.backgroundColor(red).textAlignment(NSTextAlignmentCenter).lineBreakMode(NSLineBreakByClipping).textColor(blue).numberOfLines(0).text(@"Hello World").addToSuperview(self.view);

    UITextField.make.textAlignment(NSTextAlignmentCenter).origin(100, 200).size(200, 200).text(@"你好").backgroundColor(blue).textColor(red).addToSuperview(self.view);

}

@end
