//
//  FadeOutAnimation.m
//  TTAnimationExample
//
//  Created by titengjiang on 16/1/19.
//  Copyright © 2016年 sloop. All rights reserved.
//

#import "FadeOutAnimation.h"

@implementation FadeOutAnimation

-(void)start
{
    NSArray<NSNumber *> *keyTimes =  @[@0,@1];
    
    //opacity animation
    CAKeyframeAnimation * opacityAnimation = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
    opacityAnimation.keyTimes =keyTimes;
    opacityAnimation.values = @[@1,@0];
    
    
    CAAnimationGroup * animationGroup = [[CAAnimationGroup alloc] init];
    animationGroup.animations = @[opacityAnimation];
    animationGroup.delegate= self;
    animationGroup.duration = _params.duration;
    animationGroup.timingFunction =[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
    [_targetView.layer addAnimation:animationGroup forKey:@""];
    
}

@end
