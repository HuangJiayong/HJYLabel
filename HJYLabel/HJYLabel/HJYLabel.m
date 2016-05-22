//
//  HJYLabel.m
//  HJYLabel
//
//  Created by 黄家永 on 16/5/20.
//  Copyright © 2016年 黄家永. All rights reserved.
//

#import "HJYLabel.h"

@implementation HJYLabel

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        _labelTextAlignment = LabelTextAlignmentVerticalCenter | LabelTextAlignmentHorizontallyCenter;
    }
    return self;
}

- (void)setLabelTextAlignment:(LabelTextAlignment)labelTextAlignment {
    _labelTextAlignment = labelTextAlignment;
    [self setNeedsDisplay];
}

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines {
    CGRect textRect = [super textRectForBounds:bounds limitedToNumberOfLines:numberOfLines];
    
    
    if (_labelTextAlignment & LabelTextAlignmentTop) {
        //居上
        if (_labelTextAlignment & LabelTextAlignmentBotton) {
            NSLog(@"居上和居下不能同时使用");
        }
        if (_labelTextAlignment & LabelTextAlignmentHorizontallyCenter) {
            NSLog(@"居上和水平居中不能同时使用");
        }
        textRect.origin.y = bounds.origin.y;
    }
    
    if (_labelTextAlignment & LabelTextAlignmentBotton) {
        //居下    000010
        if (_labelTextAlignment & LabelTextAlignmentTop) {
            NSLog(@"居上和居下不能同时使用");
        }
        if (_labelTextAlignment & LabelTextAlignmentHorizontallyCenter) {
            NSLog(@"居下和水平居中不能同时使用");
        }
        textRect.origin.y = bounds.origin.y + (bounds.size.height - textRect.size.height);
    }
    
    if (_labelTextAlignment & LabelTextAlignmentLeft) {
        //居左    000100
        if (_labelTextAlignment & LabelTextAlignmentRight) {
            NSLog(@"居左和居右不能同时使用");
        }
        if (_labelTextAlignment & LabelTextAlignmentVerticalCenter) {
            NSLog(@"居左和垂直居中不能同时使用");
        }
        textRect.origin.x = bounds.origin.x;
    }
    
    if (_labelTextAlignment & LabelTextAlignmentRight) {
        //居右    001000
        if (_labelTextAlignment & LabelTextAlignmentLeft) {
            NSLog(@"居左和居右不能同时使用");
        }
        if (_labelTextAlignment & LabelTextAlignmentVerticalCenter) {
            NSLog(@"居左和垂直居中不能同时使用");
        }
        textRect.origin.x = bounds.origin.x + (bounds.size.width - textRect.size.width);
    }
    
    if (_labelTextAlignment & LabelTextAlignmentVerticalCenter) {
        //垂直居中 010000
        if (_labelTextAlignment & LabelTextAlignmentLeft) {
            NSLog(@"垂直居中和居左不能同时使用");
        }
        if (_labelTextAlignment & LabelTextAlignmentRight) {
            NSLog(@"垂直居中和居右不能同时使用");
        }
        textRect.origin.y = bounds.origin.y + (bounds.size.height - textRect.size.height) / 2.0;
    }
    
    if (_labelTextAlignment & LabelTextAlignmentHorizontallyCenter) {
        //水平居中 100000
        if (_labelTextAlignment & LabelTextAlignmentTop) {
            NSLog(@"水平居中和居上不能同时使用");
        }
        if (_labelTextAlignment & LabelTextAlignmentBotton) {
            NSLog(@"水平居中和居下不能同时使用");
        }
        textRect.origin.x = bounds.origin.x + (bounds.size.width - textRect.size.width) / 2.0;
    }
    return textRect;
}

- (void)drawTextInRect:(CGRect)rect {
    CGRect textRect = [self textRectForBounds:rect limitedToNumberOfLines:self.numberOfLines];
    [super drawTextInRect:textRect];
}

@end
