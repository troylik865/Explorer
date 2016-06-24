//
//  UIViewController+Explorer.m
//  Runtime
//
//  Created by 李彬 on 16/6/24.
//  Copyright © 2016年 李彬. All rights reserved.
//

#import "UIViewController+Explorer.h"

@implementation UIViewController (Explorer)


-(void)gotoPage:(NSString *)viewControllerName animated:(BOOL)animated{
    [self gotoPage:viewControllerName withParam:nil animated:animated];
}

-(void)gotoPage:(NSString *)viewControllerName {
    [self gotoPage:viewControllerName withParam:nil animated:YES];
}

-(void)gotoPage:(NSString *)viewControllerName withParam:(NSDictionary *)param animated:(BOOL)animated{
    UIViewController *contrller = [[NSClassFromString(viewControllerName) alloc] init];
    if (!contrller) {
        return;
    }
    if (param && [viewControllerName respondsToSelector:@selector(setParam:)]) {
        [contrller performSelector:@selector(setParam:) withObject:param];
    }
    [self.navigationController pushViewController:contrller animated:animated];
}

@end
