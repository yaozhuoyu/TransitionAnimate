//
//  PViewController.h
//  TransitionTest
//
//  Created by yaozhuoyu on 13-6-27.
//  Copyright (c) 2013年 yaozhuoyu. All rights reserved.
//

#import <UIKit/UIKit.h>

#define IMAGEFIRSTFRAME  CGRectMake(0, 0, 64.0f, 96.0f)
#define IMAGESECONDFRAME  CGRectMake(0, 0, 320.0f, 480.0f)

@interface PViewController : UIViewController
@property (nonatomic, strong) UIButton *imageBtn;

@end
