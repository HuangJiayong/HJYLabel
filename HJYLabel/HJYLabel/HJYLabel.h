//
//  HJYLabel.h
//  HJYLabel
//
//  Created by 黄家永 on 16/5/20.
//  Copyright © 2016年 黄家永. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSInteger, LabelTextAlignment) {
    LabelTextAlignmentCenter             = 0,       //默认居中
    LabelTextAlignmentTop                = 1 << 0,  //顶部
    LabelTextAlignmentBotton             = 1 << 1,  //底部
    LabelTextAlignmentLeft               = 1 << 2,  //左边
    LabelTextAlignmentRight              = 1 << 3,  //右边
};

@interface HJYLabel : UILabel

@property (nonatomic, assign) LabelTextAlignment labelTextAlignment;

@end
