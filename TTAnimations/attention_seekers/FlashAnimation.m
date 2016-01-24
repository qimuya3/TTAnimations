//
//  FlashAnimation.m
//  TTAnimationExample
//
//  Created by titengjiang on 16/1/18.
//  Copyright © 2016年 sloop. All rights reserved.
//

#import "FlashAnimation.h"

@implementation FlashAnimation

-(void)start
{
    NSArray<NSNumber *> *keyTimes =  @[@0,@0.25,@0.5,@0.75,@1];
    CAKeyframeAnimation * opacityAnimation = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
    opacityAnimation.keyTimes = keyTimes;
    opacityAnimation.values = @[@1,@0,@1,@0,@1];
    
    
    CAAnimationGroup * animationGroup = [[CAAnimationGroup alloc] init];
    animationGroup.animations = @[opacityAnimation];
    animationGroup.delegate= self;
    animationGroup.duration = _params.duration;
    [_targetView.layer addAnimation:animationGroup forKey:@""];
    
    
}

@end
