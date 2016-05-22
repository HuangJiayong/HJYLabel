//
//  HJYLabel.h
//  HJYLabel
//
//  Created by 黄家永 on 16/5/20.
//  Copyright © 2016年 黄家永. All rights reserved.
//  5  9  21  6 10  22   

#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSInteger, LabelTextAlignment) {
    LabelTextAlignmentTop                = 1 << 0,  // 居上            000001
    LabelTextAlignmentBotton             = 1 << 1,  // 居下            000010
    LabelTextAlignmentLeft               = 1 << 2,  // 居左            000100
    LabelTextAlignmentRight              = 1 << 3,  // 居右            001000
    LabelTextAlignmentVerticalCenter     = 1 << 4,  // 垂直居中         010000
    LabelTextAlignmentHorizontallyCenter = 1 << 5   // 水平居中         100000
};

@interface HJYLabel : UILabel

@property (nonatomic, assign) LabelTextAlignment labelTextAlignment;

@end
