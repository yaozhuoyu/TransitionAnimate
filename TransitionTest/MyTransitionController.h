//
//  MyTransitionController.h
//  TransitionTest
//
//  Created by yaozhuoyu on 13-6-27.
//  Copyright (c) 2013年 yaozhuoyu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyTransitionController : NSObject<UIViewControllerAnimatedTransitioning>

@property (nonatomic, assign) UINavigationControllerOperation navOp;

@end
