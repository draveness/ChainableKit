//
//  ChainableKit.h
//  ChainableKit
//
//  Created by apple on 15/5/12.
//  Copyright (c) 2015年 DeltaX. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChainableBlock.h"

@interface ChainableKit : NSObject

@property (nonatomic, strong) UIView *view;

- (ChainableView)addToSuperview;

// Color
- (ChainableColor)backgroundColor;
- (ChainableColor)tintColor;

// Position
- (ChainableRect)frame;
- (ChainableRect)bounds;
- (ChainablePoint)center;
- (ChainablePoint)origin;
- (ChainableSize)size;
- (ChainableFloat)x;
- (ChainableFloat)y;
- (ChainableFloat)width;
- (ChainableFloat)height;
- (ChainableFloat)centerX;
- (ChainableFloat)centerY;

// Visible
- (ChainableFloat)alpha;
- (ChainableBOOL)clipsToBounds;
- (ChainableBOOL)opaque;
- (ChainableBOOL)hidden;

// Helper
- (ChainableKit *)with;
- (ChainableKit *)and;

@end


@interface ChainableKit (UILabel)

- (ChainableString)text;
- (ChainableFont)font;
- (ChainableColor)textColor;
- (ChainableColor)shadowColor;
- (ChainableInteger)textAlignment;
- (ChainableInteger)lineBreakMode;
- (ChainableAttributedString)attributedText;
- (ChainableInteger)numberOfLines;

@end

