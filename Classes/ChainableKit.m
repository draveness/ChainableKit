//
//  ChainableKit.m
//  ChainableKit
//
//  Created by apple on 15/5/12.
//  Copyright (c) 2015年 DeltaX. All rights reserved.
//

#import "ChainableKit.h"

@implementation ChainableKit

- (ChainableView)addToSuperview {
    __weak ChainableKit *weakSelf = self;
    return ChainableView(view) {
        [view addSubview:weakSelf.view];
        return weakSelf;
    };
}

#pragma mark - Color

- (ChainableColor)backgroundColor {
    __weak ChainableKit *weakSelf = self;
    return ChainableColor(color) {
        weakSelf.view.backgroundColor = color;
        return weakSelf;
    };
}

- (ChainableColor)tintColor {
    __weak ChainableKit *weakSelf = self;
    return ChainableColor(color) {
        weakSelf.view.tintColor = color;
        return weakSelf;
    };
}


#pragma mark - Position

- (ChainableRect)frame {
    __weak ChainableKit *weakSelf = self;
    return ChainableRect(x, y, width, height) {
        weakSelf.view.frame = CGRectMake(x, y, width, height);
        return weakSelf;
    };
}

- (ChainableRect)bounds {
    __weak ChainableKit *weakSelf = self;
    return ChainableRect(x, y, width, height) {
        weakSelf.view.bounds = CGRectMake(x, y, width, height);
        return weakSelf;
    };
}

- (ChainablePoint)origin {
    __weak ChainableKit *weakSelf = self;
    return ChainablePoint(x, y) {
        weakSelf.view.frame = CGRectMake(x,
                                         y,
                                         weakSelf.view.frame.size.width,
                                         weakSelf.view.frame.size.height);
        return weakSelf;
    };
}

- (ChainableSize)size {
    __weak ChainableKit *weakSelf = self;
    return ChainableSize(width, height) {
        weakSelf.view.frame = CGRectMake(weakSelf.view.frame.origin.x,
                                         weakSelf.view.frame.origin.y,
                                         width,
                                         height);
        return weakSelf;
    };
}

- (ChainablePoint)center {
    __weak ChainableKit *weakSelf = self;
    return ChainablePoint(x, y) {
        weakSelf.view.center = CGPointMake(x, y);
        return weakSelf;
    };
}

- (ChainableFloat)x {
    __weak ChainableKit *weakSelf = self;
    return ChainableFloat(x) {
        weakSelf.view.frame = CGRectMake(x,
                                         weakSelf.view.frame.origin.y,
                                         weakSelf.view.frame.size.width,
                                         weakSelf.view.frame.size.height);
        return weakSelf;
    };
}

- (ChainableFloat)y {
    __weak ChainableKit *weakSelf = self;
    return ChainableFloat(y) {
        weakSelf.view.frame = CGRectMake(weakSelf.view.frame.origin.x,
                                         y,
                                         weakSelf.view.frame.size.width,
                                         weakSelf.view.frame.size.height);
        return weakSelf;
    };
}
- (ChainableFloat)width {
    __weak ChainableKit *weakSelf = self;
    return ChainableFloat(width) {
        weakSelf.view.frame = CGRectMake(weakSelf.view.frame.origin.x,
                                         weakSelf.view.frame.origin.y,
                                         width,
                                         weakSelf.view.frame.size.height);
        return weakSelf;
    };
}

- (ChainableFloat)height {
    __weak ChainableKit *weakSelf = self;
    return ChainableFloat(height) {
        weakSelf.view.frame = CGRectMake(weakSelf.view.frame.origin.x,
                                         weakSelf.view.frame.origin.y,
                                         weakSelf.view.frame.size.width,
                                         height);
        return weakSelf;
    };
}

- (ChainableFloat)centerX {
    __weak ChainableKit *weakSelf = self;
    return ChainableFloat(centerX) {
        weakSelf.view.center = CGPointMake(centerX,
                                           weakSelf.view.center.y);
        return weakSelf;
    };
}

- (ChainableFloat)centerY {
    __weak ChainableKit *weakSelf = self;
    return ChainableFloat(centerY) {
        weakSelf.view.center = CGPointMake(weakSelf.view.center.x,
                                           centerY);
        return weakSelf;
    };
}


#pragma mark - Visible

- (ChainableFloat)alpha {
    __weak ChainableKit *weakSelf = self;
    return ChainableFloat(alpha) {
        weakSelf.view.alpha = alpha;
        return weakSelf;
    };
}

- (ChainableBOOL)clipsToBounds {
    __weak ChainableKit *weakSelf = self;
    return ChainableBOOL(clipsToBounds) {
        weakSelf.view.clipsToBounds = clipsToBounds;
        return weakSelf;
    };
}

- (ChainableBOOL)opaque {
    __weak ChainableKit *weakSelf = self;
    return ChainableBOOL(opaque) {
        weakSelf.view.opaque = opaque;
        return weakSelf;
    };
}

- (ChainableBOOL)hidden {
    __weak ChainableKit *weakSelf = self;
    return ChainableBOOL(hidden) {
        weakSelf.view.hidden = hidden;
        return weakSelf;
    };
}

#pragma mark - Helper

- (ChainableKit *)with {
    return self;
}
- (ChainableKit *)and {
    return self;
}

- (ChainableInteger)tag {
    __weak ChainableKit *weakSelf = self;
    return ChainableInteger(tag) {
        weakSelf.view.tag = tag;
        return weakSelf;
    };
}

@end

@implementation ChainableKit (UILabel)

#pragma mark - UILabel

- (ChainableString)text {
    __weak ChainableKit *weakSelf = self;
    return ChainableString(text) {
        if ([weakSelf.view respondsToSelector:@selector(text)])
            ((UILabel*)(weakSelf.view)).text = text;
        return weakSelf;
    };
}

- (ChainableFont)font {
    __weak ChainableKit *weakSelf = self;
    return ChainableFont(font) {
        if ([weakSelf.view respondsToSelector:@selector(font)])
            ((UILabel*)(weakSelf.view)).font = font;
        return weakSelf;
    };
}

- (ChainableColor)textColor {
    __weak ChainableKit *weakSelf = self;
    return ChainableColor(textColor) {
        if ([weakSelf.view respondsToSelector:@selector(textColor)])
            ((UILabel*)(weakSelf.view)).textColor = textColor;
        return weakSelf;
    };
}

- (ChainableInteger)numberOfLines {
    __weak ChainableKit *weakSelf = self;
    return ChainableInteger(numberOfLines) {
        if ([weakSelf.view respondsToSelector:@selector(numberOfLines)])
            ((UILabel*)(weakSelf.view)).numberOfLines = numberOfLines;
        return weakSelf;
    };
}

- (ChainableColor)shadowColor {
    __weak ChainableKit *weakSelf = self;
    return ChainableColor(shadowColor) {
        if ([weakSelf.view respondsToSelector:@selector(shadowColor)])
            ((UILabel*)(weakSelf.view)).shadowColor = shadowColor;
        return weakSelf;
    };
}

- (ChainableInteger)textAlignment {
    __weak ChainableKit *weakSelf = self;
    return ChainableInteger(textAlignment) {
        if ([weakSelf.view respondsToSelector:@selector(textAlignment)])
            ((UILabel*)(weakSelf.view)).textAlignment = textAlignment;
        return weakSelf;
    };
}

- (ChainableInteger)lineBreakMode {
    __weak ChainableKit *weakSelf = self;
    return ChainableInteger(lineBreakMode) {
        if ([weakSelf.view respondsToSelector:@selector(lineBreakMode)])
            ((UILabel*)(weakSelf.view)).lineBreakMode = lineBreakMode;
        return weakSelf;
    };
}

- (ChainableAttributedString)attributedText {
    __weak ChainableKit *weakSelf = self;
    return ChainableAttributedString(attributedText) {
        if ([weakSelf.view respondsToSelector:@selector(attributedText)])
            ((UILabel*)(weakSelf.view)).attributedText = attributedText;
        return weakSelf;
    };
}

@end
