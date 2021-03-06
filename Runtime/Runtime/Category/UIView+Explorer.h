//
//  UIView+Explorer.h
//  Runtime
//
//  Created by 李彬 on 16/6/24.
//  Copyright © 2016年 李彬. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Explorer)

@property CGPoint origin;
@property CGSize size;

@property (readonly) CGPoint bottomLeft;
@property (readonly) CGPoint bottomRight;
@property (readonly) CGPoint topRight;

@property CGFloat height;
@property CGFloat width;

@property CGFloat top;
@property CGFloat left;

@property CGFloat bottom;
@property CGFloat right;

- (void) moveBy: (CGPoint) delta;
- (void) scaleBy: (CGFloat) scaleFactor;
- (void) fitInSize: (CGSize) aSize;

-(UIViewController*)getControllerFromView; //从View获取它从属的ViewController

-(void)cornerRadius:(CGFloat)radius;

@end
