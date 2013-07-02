//
//  AppDelegate.h
//  TransitionTest
//
//  Created by yaozhuoyu on 13-6-27.
//  Copyright (c) 2013年 yaozhuoyu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyTransitionController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) MyTransitionController *transitionCon;

@end
