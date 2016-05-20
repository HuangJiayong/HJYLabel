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
        _labelTextAlignment = LabelTextAlignmentCenter;
    }
    return self;
}

- (void)setLabelTextAlignment:(LabelTextAlignment)labelTextAlignment {
    _labelTextAlignment = labelTextAlignment;
    [self setNeedsDisplay];
}

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines {
    CGRect textRect = [super textRectForBounds:bounds limitedToNumberOfLines:numberOfLines];
    if (_labelTextAlignment & 1) {
        textRect.origin.y = bounds.origin.y;
    }
    if (_labelTextAlignment & 1 << 1) {
        
    }
    if (_labelTextAlignment & 1 << 2) {
        
    }
    if (_labelTextAlignment & 1 << 3) {
        
    }
//    if (_labelTextAlignment & 1 << 4) {
//        
//    }
//    if (_labelTextAlignment & 1 << 5) {
//        
//    }
    return textRect;
}

@end
