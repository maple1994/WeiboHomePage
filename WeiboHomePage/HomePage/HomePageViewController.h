//
//  HomePageViewController.h
//  WeiboHomePage
//
//  Created by Maple on 16/10/16.
//  Copyright © 2016年 Maple. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kTopBarHeight 64              // 状态栏+导航栏的高度
#define kHeaderTopHeight 200          // header上部分的高度
#define kHeaderSegmentHeight 40 // header的Sement高度
#define kHeaderHeight kHeaderTopHeight + kHeaderSegmentHeight
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

// header上部分默认200高度
//CGFloat defaultHeaderTopH = 200;

@interface HomePageViewController : UIViewController

@end
