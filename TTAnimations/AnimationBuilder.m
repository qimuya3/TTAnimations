//
//  AnimationBuilder.m
//  TTAnimationExample
//
//  Created by titengjiang on 16/1/17.
//  Copyright © 2016年 sloop. All rights reserved.
//

#import "AnimationBuilder.h"
#import "BasicAnimation.h"
#import "AnimationParams.h"

#import "BounceAnimation.h"
#import  "FlashAnimation.h"
#import "PulseAnimation.h"
#import "RubberBandAnimation.h"
#import "ShakeAnimation.h"
#import "SwingAnimation.h"
#import "TadaAnimation.h"
#import "WobbleAnimation.h"
#import "JelloAnimation.h"
#import "BounceAnimation.h"
#import "BounceInAnimation.h"
#import "BounceInDownAnimation.h"
#import "BounceInLeftAnimation.h"
#import "BounceInRightAnimation.h"
#import "BounceInUpAnimation.h"

#import "BounceOutAnimation.h"
#import "BounceOutDownAnimation.h"
#import "BounceOutLeftAnimation.h"
#import "BounceOutRightAnimation.h"
#import "BounceOutUpAnimation.h"

#import "FadeInAnimation.h"
#import "FadeInDownAnimation.h"
#import "FadeInDownBigAnimation.h"
#import "FadeInLeftAnimation.h"
#import "FadeInLeftBigAnimation.h"
#import "FadeInRightAnimation.h"
#import "FadeInRightBigAnimation.h"
#import "FadeInUpAnimation.h"
#import "FadeInUpBigAnimation.h"

#import "FadeOutAnimation.h"
#import "FadeOutDownAnimation.h"
#import "FadeOutDownBigAnimation.h"
#import "FadeOutLeftAnimation.h"
#import "FadeOutLeftBigAnimation.h"
#import "FadeOutRightAnimation.h"
#import "FadeOutRightBigAnimation.h"
#import "FadeOutUpAnimation.h"
#import "FadeOutUpBigAnimation.h"

#import "FlipAnimation.h"
#import "FlipInXAnimation.h"
#import "FlipInYAnimation.h"
#import "FlipOutXAnimation.h"
#import "FlipOutYAnimation.h"

#import "LightSpeedInAnimation.h"
#import "LightSpeedOutAnimation.h"

#import "HingeAnimation.h"
#import "RollInAnimation.h"
#import "RollOutAnimation.h"

#import "ZoomInAnimation.h"
#import "ZoomInDownAnimation.h"
#import "ZoomInLeftAnimation.h"
#import "ZoomInRightAnimation.h"
#import "ZoomInUpAnimation.h"

#import "ZoomOutAnimation.h"
#import "ZoomOutDownAnimation.h"
#import "ZoomOutLeftAnimation.h"
#import "ZoomOutRightAnimation.h"
#import "ZoomOutUpAnimation.h"

@implementation AnimationBuilder{
    AnimationParams  * _animationParams;
    
    id  _animationDelegate;
}

-(instancetype)init
{
    self = [super init];
    if(self){
        _animationParams = [[AnimationParams alloc] init];
        _animationParams.removedOnCompletion = YES;
        _animationParams.repeatCount =1;
        _animationParams.duration = 1;
        
    }
    return self;
}


#pragma mark private
-(BasicAnimation *)createAnimationWith:(UIView *)targetView
{
    BasicAnimation * basicAnimation = nil;
    
    switch (_animationParams.animationType) {
        case bounce:
            basicAnimation = [[BounceAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case Flash:
            basicAnimation = [[FlashAnimation alloc] initWith:_animationParams view:targetView];
            break;
         case pulse:
            basicAnimation = [[PulseAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case rubberBand:
            basicAnimation = [[RubberBandAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case shake:
            basicAnimation = [[ShakeAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case swing:
            basicAnimation = [[SwingAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case tada:
            basicAnimation = [[TadaAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case wobble:
            basicAnimation = [[WobbleAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case jello:
            basicAnimation = [[JelloAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case bounceIn:
            basicAnimation = [[BounceInAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case bounceInDown:
            basicAnimation = [[BounceInDownAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case bounceInLeft:
            basicAnimation = [[BounceInLeftAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case bounceInRight:
            basicAnimation = [[BounceInRightAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case bounceInUp:
            basicAnimation = [[BounceInUpAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case bounceOut:
            basicAnimation = [[BounceOutAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case bounceOutDown:
            basicAnimation = [[BounceOutDownAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case bounceOutLeft:
            basicAnimation = [[BounceOutLeftAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case bounceOutRight:
            basicAnimation = [[BounceOutRightAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case bounceOutUp:
            basicAnimation = [[BounceOutUpAnimation alloc] initWith:_animationParams view:targetView];
            break;
        
        case fadeIn:
            basicAnimation = [[FadeInAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case fadeInDown:
            basicAnimation = [[FadeInDownAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case fadeInDownBig:
            basicAnimation = [[FadeInDownBigAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case fadeInLeft:
            basicAnimation = [[FadeInLeftAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case fadeInLeftBig:
            basicAnimation = [[FadeInLeftBigAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case fadeInRight:
            basicAnimation = [[FadeInRightAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case fadeInRightBig:
            basicAnimation = [[FadeInRightBigAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case fadeInUp:
            basicAnimation = [[FadeInUpAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case fadeInUpBig:
            basicAnimation = [[FadeInUpBigAnimation alloc] initWith:_animationParams view:targetView];
            break;
            
        case fadeOut:
            basicAnimation = [[FadeOutAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case fadeOutDown:
            basicAnimation = [[FadeOutDownAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case fadeOutDownBig:
            basicAnimation = [[FadeOutDownBigAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case fadeOutLeft:
            basicAnimation = [[FadeOutLeftAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case fadeOutLeftBig:
            basicAnimation = [[FadeOutLeftBigAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case fadeOutRight:
            basicAnimation = [[FadeOutRightAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case fadeOutRightBig:
            basicAnimation = [[FadeOutRightBigAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case fadeOutUp:
            basicAnimation = [[FadeOutUpAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case fadeOutUpBig:
            basicAnimation = [[FadeOutUpBigAnimation alloc] initWith:_animationParams view:targetView];
            break;
            
        case flip:
            basicAnimation = [[FlipAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case flipInx:
            basicAnimation = [[FlipInXAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case flipInY:
            basicAnimation = [[FlipInYAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case flipOutX:
            basicAnimation = [[FlipOutXAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case flipOutY:
            basicAnimation = [[FlipOutYAnimation alloc] initWith:_animationParams view:targetView];
            break;
            
        case lightSpeedIn:
            basicAnimation = [[LightSpeedInAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case lightSpeedOut:
            basicAnimation = [[LightSpeedOutAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case hinge:
            basicAnimation = [[HingeAnimation alloc] initWith:_animationParams view:targetView];
            break;
         case rollIn:
            basicAnimation = [[RollInAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case rollOut:
            basicAnimation = [[RollOutAnimation alloc] initWith:_animationParams view:targetView];
            break;
            
            
        case zoomIn:
            basicAnimation = [[ZoomInAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case zoomInDown:
            basicAnimation = [[ZoomInDownAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case zoomInLeft:
            basicAnimation = [[ZoomInLeftAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case zoomInRight:
            basicAnimation = [[ZoomInRightAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case zoomInUp:
            basicAnimation = [[ZoomInUpAnimation alloc] initWith:_animationParams view:targetView];
            break;
            
        case zoomOut:
            basicAnimation = [[ZoomOutAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case zoomOutDown:
            basicAnimation = [[ZoomOutDownAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case zoomOutLeft:
            basicAnimation = [[ZoomOutLeftAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case zoomOutRight:
            basicAnimation = [[ZoomOutRightAnimation alloc] initWith:_animationParams view:targetView];
            break;
        case zoomOutUp:
            basicAnimation = [[ZoomOutUpAnimation alloc] initWith:_animationParams view:targetView];
            break;
        default:
            break;
    }
    
    
    return basicAnimation;
    
}



#pragma mark public
-(void)startOn:(UIView * )targetView;
{
    BasicAnimation * animation = [self createAnimationWith:targetView];
    if(_animationDelegate !=nil){
        
        animation.delegate = _animationDelegate;
    }
    [animation start];
}

-(AnimationBuilder *)setDuration:(CFTimeInterval)duration
{
    _animationParams.duration = duration;
    return self;
}

-(AnimationBuilder *)setAnimationType:(AnimationType)type
{
    _animationParams.animationType = type;
    return self;
    
}

-(AnimationBuilder *)setRepeatCount:(CGFloat )repeatCount
{
    _animationParams.repeatCount = repeatCount;
    return self;
}

-(AnimationBuilder *)setRemovedOnCompletion:(BOOL)removedOnCompletion
{
    _animationParams.removedOnCompletion = removedOnCompletion;
    return self;
    
}

-(AnimationBuilder *)setDelegate:(id)delegate
{
    _animationDelegate = delegate;
    return self;
}

@end
