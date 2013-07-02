//
//  MyTransitionController.m
//  TransitionTest
//
//  Created by yaozhuoyu on 13-6-27.
//  Copyright (c) 2013年 yaozhuoyu. All rights reserved.
//

#import "MyTransitionController.h"
#import "PViewController.h"

#define ANIMATION_DURATION        0.5f

@implementation MyTransitionController


- (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext{
    return ANIMATION_DURATION;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext{
    PViewController *fromViewController = (PViewController *)[transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    PViewController *toViewController = (PViewController *)[transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    UIView *containerView = [transitionContext containerView];
    
    [containerView insertSubview:toViewController.view belowSubview:fromViewController.view];
    
    toViewController.view.hidden = YES;
    
    [UIView animateWithDuration:ANIMATION_DURATION animations:^{
        
        if (self.navOp == UINavigationControllerOperationPush) {
            fromViewController.imageBtn.frame = IMAGESECONDFRAME;
        }else{
            fromViewController.imageBtn.frame = IMAGEFIRSTFRAME;
        }
        
    }completion:^(BOOL finish){
        if (finish) {
            [fromViewController.view removeFromSuperview];
            toViewController.view.hidden = NO;
            
            if (self.navOp == UINavigationControllerOperationPush) {
                fromViewController.imageBtn.frame = IMAGEFIRSTFRAME;
            }else{
                fromViewController.imageBtn.frame = IMAGESECONDFRAME;
            }
            
        }
        [transitionContext completeTransition:finish];
    }];
    
}

@end
