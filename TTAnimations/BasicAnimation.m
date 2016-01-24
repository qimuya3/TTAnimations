//
//  BasicAnimation.m
//  TTAnimationExample
//
//  Created by titengjiang on 16/1/17.
//  Copyright © 2016年 sloop. All rights reserved.
//
#import "BasicAnimation.h"
#import "AnimationParams.h"

@implementation BasicAnimation

- (instancetype)initWith:(AnimationParams *)animationParams
                    view:(UIView *)targetView
{
    self = [super init];
    if (self) {
        _targetView = targetView;
        _params = animationParams;
        _animationGroup = [[CAAnimationGroup alloc] init];
        
    }
    return self;
}

-(void)start{
    [self prepare];
    [self beginAnimation];
}


-(void)prepare
{
    
    
}
-(void)beginAnimation
{
    _animationGroup.delegate= self;
    _animationGroup.duration = _params.duration;
    _animationGroup.repeatCount = _params.repeatCount;
    if(!_params.removedOnCompletion){
        _animationGroup.removedOnCompletion = NO;
        _animationGroup.fillMode = kCAFillModeForwards;
    }
    [_targetView.layer addAnimation:_animationGroup forKey:@""];
    
}

#pragma mark caanimation delegate
- (void)animationDidStart:(CAAnimation *)anim{

    
}



- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
    
}

@end
