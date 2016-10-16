//
//  MyNavigationController.m
//  WeiboHomePage
//
//  Created by Maple on 16/10/16.
//  Copyright © 2016年 Maple. All rights reserved.
//

#import "MyNavigationController.h"

@interface MyNavigationController ()

@end

@implementation MyNavigationController

-(UIStatusBarStyle)preferredStatusBarStyle
{
  return UIStatusBarStyleLightContent;
}

- (UIViewController *)childViewControllerForStatusBarStyle {
  return self.topViewController;
}

@end
