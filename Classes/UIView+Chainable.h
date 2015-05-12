//
//  UIView+Chainable.h
//  ChainableKit
//
//  Created by apple on 15/5/12.
//  Copyright (c) 2015年 DeltaX. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChainableKit.h"

@interface UIView (Chainable)

- (ChainableKit *)make;
+ (ChainableKit *)make;

@end
