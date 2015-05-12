//
//  ChainableBlock.h
//  ChainableKit
//
//  Created by apple on 15/5/12.
//  Copyright (c) 2015年 DeltaX. All rights reserved.
//

@import UIKit;
@class ChainableKit;

#ifndef ChainableKit_ChainableBlock_h
#define ChainableKit_ChainableBlock_h

typedef ChainableKit* (^ChainableView)(UIView *view);
#define ChainableView(view) ^ChainableKit* (UIView *view)

typedef ChainableKit* (^ChainableString)(NSString *string);
#define ChainableString(string) ^ChainableKit* (NSString *string)

typedef ChainableKit* (^ChainableAttributedString)(NSAttributedString *attributedText);
#define ChainableAttributedString(attributedText) ^ChainableKit* (NSAttributedString *attributedText)

typedef ChainableKit* (^ChainableFont)(UIFont *font);
#define ChainableFont(font) ^ChainableKit* (UIFont *font)

typedef ChainableKit* (^ChainableColor)(UIColor *color);
#define ChainableColor(color) ^ChainableKit* (UIColor *color)

typedef ChainableKit* (^ChainableRect)(CGFloat x, CGFloat y, CGFloat width, CGFloat height);
#define ChainableRect(x, y, width, height) ^ChainableKit* (CGFloat x, CGFloat y, CGFloat width, CGFloat height)

typedef ChainableKit* (^ChainablePoint)(CGFloat x, CGFloat y);
#define ChainablePoint(x, y) ^ChainableKit* (CGFloat x, CGFloat y)

typedef ChainableKit* (^ChainableSize)(CGFloat width, CGFloat height);
#define ChainableSize(width, height) ^ChainableKit* (CGFloat width, CGFloat height)

typedef ChainableKit* (^ChainableFloat)(CGFloat f);
#define ChainableFloat(f) ^ChainableKit* (CGFloat f)

typedef ChainableKit* (^ChainableInteger)(NSInteger i);
#define ChainableInteger(i) ^ChainableKit* (NSInteger i)

typedef ChainableKit* (^ChainableBOOL)(BOOL b);
#define ChainableBOOL(b) ^ChainableKit* (BOOL b)


#endif
