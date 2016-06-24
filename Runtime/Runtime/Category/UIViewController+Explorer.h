//
//  UIViewController+Explorer.h
//  Runtime
//
//  Created by 李彬 on 16/6/24.
//  Copyright © 2016年 李彬. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Explorer)

-(void)gotoPage:(NSString *)viewControllerName animated:(BOOL)animated;

-(void)gotoPage:(NSString *)viewControllerName;

-(void)gotoPage:(NSString *)viewControllerName withParam:(NSDictionary *)param animated:(BOOL)animated;

@end
