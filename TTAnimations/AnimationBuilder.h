//
//  AnimationBuilder.h
//  TTAnimationExample
//
//  Created by titengjiang on 16/1/17.
//  Copyright © 2016年 sloop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
 


typedef NS_ENUM(NSUInteger, AnimationType) {
    bounce = 0,
    Flash,
    pulse,
    rubberBand,
    shake,
    swing,
    tada,
    wobble,
    jello,
    bounceIn,
    bounceInDown,
    bounceInLeft,
    bounceInRight,
    bounceInUp,
    bounceOut,
    bounceOutDown,
    bounceOutLeft,
    bounceOutRight,
    bounceOutUp,
    fadeIn,
    fadeInDown,
    fadeInDownBig,
    fadeInLeft,
    fadeInLeftBig,
    fadeInRight,
    fadeInRightBig,
    fadeInUp,
    fadeInUpBig,
    fadeOut,
    fadeOutDown,
    fadeOutDownBig,
    fadeOutLeft,
    fadeOutLeftBig,
    fadeOutRight,
    fadeOutRightBig,
    fadeOutUp,
    fadeOutUpBig,
    flip,
    flipInx,
    flipInY,
    flipOutX,
    flipOutY,
    
    lightSpeedIn,
    lightSpeedOut,
    
    hinge,
    rollIn,
    rollOut,
    
    zoomIn,
    zoomInDown,
    zoomInLeft,
    zoomInRight,
    zoomInUp,
    
    zoomOut,
    zoomOutDown,
    zoomOutLeft,
    zoomOutRight,
    zoomOutUp
};



@interface AnimationBuilder : NSObject


-(AnimationBuilder *)setDuration:(CFTimeInterval)duration;

-(AnimationBuilder *)setAnimationType:(AnimationType)type;

-(AnimationBuilder *)setRepeatCount:(CGFloat )repeatCount;

-(AnimationBuilder *)setRemovedOnCompletion:(BOOL)removedOnCompletion;


-(void)startOn:(UIView * )targetView;
-(AnimationBuilder *)setDelegate:(id)delegate;


@end
