//
//  Bounce.m
//  TTAnimationExample
//
//  Created by titengjiang on 16/1/18.
//  Copyright © 2016年 sloop. All rights reserved.
//

#import "BounceAnimation.h"

@implementation BounceAnimation


-(void)start
{
    NSArray<NSNumber *> *keyTimes =  @[@0,@0.2,@0.4,@0.43,@0.53,@0.7,@0.8,@0.9,@1];
    
    NSArray<CAMediaTimingFunction *> * timeFunctions  = @[
                                                          [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault],
                                                          [CAMediaTimingFunction functionWithControlPoints:0.215 : 0.610:0.355 :1.000],
                                                          [CAMediaTimingFunction functionWithControlPoints:0.755 : 0.050:0.855 :0.060],
                                                          [CAMediaTimingFunction functionWithControlPoints:0.755 : 0.050:0.855 :0.060],
                                                          [CAMediaTimingFunction functionWithControlPoints:0.215 : 0.610:0.355 :1.000],
                                                          [CAMediaTimingFunction functionWithControlPoints:0.755 : 0.050:0.855 :0.060],
                                                          [CAMediaTimingFunction functionWithControlPoints:0.215 : 0.610:0.355 :1.000],
                                                          [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault],
                                                          [CAMediaTimingFunction functionWithControlPoints:0.215 : 0.610:0.355 :1.000]
                                                          ];
    CAKeyframeAnimation * transformKeyframeAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.translation.y"];
    
    transformKeyframeAnimation.keyTimes = keyTimes;
    transformKeyframeAnimation.timingFunctions = timeFunctions;
    transformKeyframeAnimation.values = @[@0,@0,@-30,@-30,@0,@-15,@0,@-4,@0];
    
    
    CAAnimationGroup * animationGroup = [[CAAnimationGroup alloc] init];
    animationGroup.animations = @[transformKeyframeAnimation];
    animationGroup.delegate= self;
    animationGroup.duration = _params.duration;
    
    [_targetView.layer addAnimation:animationGroup forKey:@""];
    
    
}

@end
