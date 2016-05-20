//
//  HJYLabel.h
//  HJYLabel
//
//  Created by 黄家永 on 16/5/20.
//  Copyright © 2016年 黄家永. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSInteger, LabelTextAlignment) {
    LabelTextAlignmentTop                = 1 << 0,  //居上
    LabelTextAlignmentBotton             = 1 << 1,  //居下
    LabelTextAlignmentLeft               = 1 << 2,  //居左
    LabelTextAlignmentRight              = 1 << 3,  //居右
    LabelTextAlignmentVerticalCenter     = 1 << 4,  //垂直居中
    LabelTextAlignmentHorizontallyCenter = 1 << 5   //水平居中
};

@interface HJYLabel : UILabel

@property (nonatomic, assign) LabelTextAlignment labelTextAlignment;

@end
