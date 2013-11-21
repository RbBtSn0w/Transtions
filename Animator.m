//
//  Animator.m
//  Transtions
//
//  Created by Snow on 11/21/13.
//  Copyright (c) 2013 RbBtSn0w. All rights reserved.
//

#import "Animator.h"

@implementation Animator


- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext{
    return 0.25;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext{
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    [[transitionContext containerView] addSubview:toViewController.view];
    toViewController.view.alpha = 0;
//    toViewController.view.backgroundColor = [UIColor yellowColor];
    
    [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
        fromViewController.view.transform = CGAffineTransformMakeScale(0.1, 0.1);
        fromViewController.view.alpha = 1;
  //      fromViewController.view.backgroundColor = [UIColor greenColor];
    } completion:^(BOOL finished) {
        fromViewController.view.transform = CGAffineTransformIdentity;
        [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
    }];
    
    
}

@end
