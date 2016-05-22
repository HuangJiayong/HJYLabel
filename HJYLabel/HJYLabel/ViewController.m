//
//  ViewController.m
//  HJYLabel
//
//  Created by 黄家永 on 16/5/20.
//  Copyright © 2016年 黄家永. All rights reserved.
//

#import "ViewController.h"
#import "HJYLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    HJYLabel *label = [[HJYLabel alloc] initWithFrame:CGRectMake(20, 50, 100, 200)];

    label.text = @"Label";
    label.labelTextAlignment = LabelTextAlignmentTop | LabelTextAlignmentBotton;
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
