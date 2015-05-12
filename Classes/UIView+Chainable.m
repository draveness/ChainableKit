//
//  UIView+Chainable.m
//  ChainableKit
//
//  Created by apple on 15/5/12.
//  Copyright (c) 2015年 DeltaX. All rights reserved.
//

#import "UIView+Chainable.h"
#import "ChainableKit.h"

@implementation UIView (Chainable)

- (ChainableKit *)make {
    ChainableKit *chainable = [[ChainableKit alloc] init];
    chainable.view = self;
    return chainable;
}

+ (ChainableKit *)make {
    ChainableKit *chainable = [[ChainableKit alloc] init];
    UIView *view = [[self alloc] init];
    chainable.view = view;
    return chainable;
}

@end
