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
    self.view.chainable.backgroundColor([UIColor whiteColor]);
    UIView *view = [[UIView alloc] init];
    UIColor *blue = [UIColor blueColor];
    view.chainable.backgroundColor(blue).frame(190, 100, 30, 30).alpha(0.5).origin(19, 19).addToSuperview(self.view);
    UIView.chainable.backgroundColor(blue).frame(190, 100, 30, 30).addToSuperview(self.view);
}

@end
