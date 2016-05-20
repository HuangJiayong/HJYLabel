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
    
    if ((_labelTextAlignment & 1) &&
        !(_labelTextAlignment & 1 << 1) &&
        !(_labelTextAlignment & 1 << 4)) {
        //居上
        textRect.origin.y = bounds.origin.y;
    }else{
        [self errorInVertical];
    }
    
    if ((_labelTextAlignment & 1 << 1) &&
        !(_labelTextAlignment & 1) &&
        !(_labelTextAlignment & 1 << 4)) {
        //居下
        textRect.origin.y = bounds.origin.y + (bounds.size.height - textRect.size.height);
    }else{
        [self errorInVertical];
    }
    
    if ((_labelTextAlignment & 1 << 2) &&
        !(_labelTextAlignment & 1 << 3) &&
        !(_labelTextAlignment & 1 << 5)) {
        //居左
        textRect.origin.x = bounds.origin.x;
    }else{
        [self errorInHorizontally];
    }
    
    if ((_labelTextAlignment & 1 << 3) &&
        !(_labelTextAlignment & 1 << 2) &&
        !(_labelTextAlignment & 1 << 5)) {
        //居右
        textRect.origin.x = bounds.origin.x + (bounds.size.width - textRect.size.width);
    }else{
        [self errorInHorizontally];
    }
    
    if ((_labelTextAlignment & 1 << 4) &&
        !(_labelTextAlignment & 1) &&
        !(_labelTextAlignment & 1 << 1)) {
        //垂直居中
        textRect.origin.y = bounds.origin.y + (bounds.size.height - textRect.size.height) / 2.0;
    }else{
        [self errorInVertical];
    }
    
    if ((_labelTextAlignment & 1 << 5) &&
        !(_labelTextAlignment & 1 << 2) &&
        !(_labelTextAlignment & 1 << 3)) {
        //水平居中
        textRect.origin.x = bounds.origin.x + (bounds.size.width - textRect.size.width) / 2.0;
    }else{
        [self errorInHorizontally];
    }
    
    return textRect;
}

- (void)drawTextInRect:(CGRect)rect {
    CGRect textRect = [self textRectForBounds:rect limitedToNumberOfLines:self.numberOfLines];
    [super drawTextInRect:textRect];
}

- (void)errorInVertical {
    NSLog(@"垂直方向布局冲突");
}

- (void)errorInHorizontally {
    NSLog(@"水平方向布局冲突");
}

@end
