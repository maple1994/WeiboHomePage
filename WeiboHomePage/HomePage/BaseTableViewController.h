//
//  BaseTableViewController.h
//  WeiboHomePage
//
//  Created by Maple on 16/11/9.
//  Copyright © 2016年 Maple. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BaseTableViewDelegate <NSObject>

/// 滚动ing
- (void)tableViewDidScroll:(UIScrollView *)scrollView;
/// 停止拖拽
- (void)tableViewDidEndDragging:(UIScrollView *)scrollView;
/// 结束滚动
- (void)tableViewDidEndDecelerating:(UIScrollView *)scrollView;
/// 滚动到顶部
- (void)tableViewDidScrollToTop:(UIScrollView *)scrollView;

@end

@interface BaseTableViewController : UITableViewController

// tableview滚动代理
@property (nonatomic, weak) id<BaseTableViewDelegate> scrollDelegate;

@end
