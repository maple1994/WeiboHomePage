//
//  BaseTableViewController.m
//  WeiboHomePage
//
//  Created by Maple on 16/11/9.
//  Copyright © 2016年 Maple. All rights reserved.
//

#import "BaseTableViewController.h"

@interface BaseTableViewController ()

@end

@implementation BaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
}


- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
  if([self.scrollDelegate respondsToSelector:@selector(tableViewDidScroll:)])
  {
    [self.scrollDelegate tableViewDidScroll:scrollView];
  }
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
  if([self.scrollDelegate respondsToSelector:@selector(tableViewDidEndDragging:)])
  {
    [self.scrollDelegate tableViewDidEndDragging:scrollView];
  }
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
  if([self.scrollDelegate respondsToSelector:@selector(tableViewDidEndDecelerating:)])
  {
    [self.scrollDelegate tableViewDidEndDecelerating:scrollView];
  }
}

- (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView
{
  if([self.scrollDelegate respondsToSelector:@selector(tableViewDidScrollToTop:)])
  {
    [self.scrollDelegate tableViewDidScrollToTop:scrollView];
  }
}


@end
