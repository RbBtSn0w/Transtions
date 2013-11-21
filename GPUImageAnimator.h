//
//  GPUImageAnimator.h
//  Transtions
//
//  Created by Snow on 11/21/13.
//  Copyright (c) 2013 RbBtSn0w. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GPUImageAnimator : NSObject<UIViewControllerAnimatedTransitioning,UIViewControllerInteractiveTransitioning>

@property (nonatomic) BOOL interactive;
@property (nonatomic) CGFloat progress;

@property (nonatomic,strong) CADisplayLink *displayLink;


- (void)finishInteractiveTransition;
- (void)cancelInteractiveTransition;


@end
