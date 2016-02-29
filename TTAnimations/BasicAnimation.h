//
//  BasicAnimation.h
//  TTAnimationExample
//
//  Created by titengjiang on 16/1/17.
//  Copyright © 2016年 sloop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BasicAnimation.h"
#import "AnimationParams.h"
#import "CATransform3DExtend.h"




#define deg(x) x*M_PI/180.0f
@interface BasicAnimation : NSObject
{
    AnimationParams * _params;
    UIView * _targetView;
    CAAnimationGroup * _animationGroup;
}
@property(nonatomic,strong)id delegate;

- (instancetype)initWith:(AnimationParams *)animationParams
                    view:(UIView *)targetView;
-(void)start;
@end
