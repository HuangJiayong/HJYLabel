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
        //居上    000001
        textRect.origin.y = bounds.origin.y;
    }
    
    if (_labelTextAlignment & LabelTextAlignmentBotton) {
        //居下    000010
        textRect.origin.y = bounds.origin.y + (bounds.size.height - textRect.size.height);
    }
    
    if (_labelTextAlignment & LabelTextAlignmentLeft) {
        //居左    000100
        textRect.origin.x = bounds.origin.x;
    }
    
    if (_labelTextAlignment & LabelTextAlignmentRight) {
        //居右    001000
        textRect.origin.x = bounds.origin.x + (bounds.size.width - textRect.size.width);
    }
    
    if (_labelTextAlignment & LabelTextAlignmentVerticalCenter) {
        //垂直居中 010000
        textRect.origin.y = bounds.origin.y + (bounds.size.height - textRect.size.height) / 2.0;
    }
    
    if (_labelTextAlignment & LabelTextAlignmentHorizontallyCenter) {
        //水平居中 100000
        textRect.origin.x = bounds.origin.x + (bounds.size.width - textRect.size.width) / 2.0;
    }
    return textRect;
}

- (void)drawTextInRect:(CGRect)rect {
    CGRect textRect = [self textRectForBounds:rect limitedToNumberOfLines:self.numberOfLines];
    [super drawTextInRect:textRect];
}

@end
