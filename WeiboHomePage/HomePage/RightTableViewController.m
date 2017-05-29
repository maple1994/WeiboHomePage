//
//  RightTableViewController.m
//  WeiboHomePage
//
//  Created by Maple on 16/10/16.
//  Copyright © 2016年 Maple. All rights reserved.
//

#import "RightTableViewController.h"
#import "MJRefresh.h"

@interface RightTableViewController ()

/// 数据源
@property (nonatomic, strong) NSMutableArray *datas;

@end

@implementation RightTableViewController

static int count = 0;

- (void)viewDidLoad {
  [super viewDidLoad];
  [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"ID"];
    [self addRefresh];
}

/// 添加刷新控件
- (void)addRefresh {
    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadNewData)];
    self.tableView.mj_footer = [MJRefreshAutoNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(loadMoreData)];
}

/// 下拉刷新
- (void)loadNewData {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSMutableArray *tmp = [self createTestData];
        NSMutableArray *tmp1 = self.datas;
        [tmp addObjectsFromArray:tmp1];
        self.datas = tmp;
        [self.tableView reloadData];
        [self.tableView.mj_header endRefreshing];
    });
}

/// 上拉刷新
- (void)loadMoreData {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSMutableArray *tmp = [self createTestData];
        [self.datas addObjectsFromArray:tmp];
        [self.tableView.mj_footer endRefreshing];
        [self.tableView reloadData];
    });
}

/// 创建10条测试数据
- (NSMutableArray *)createTestData {
    NSMutableArray *testData = [NSMutableArray array];
    for (int i = 1; i <= 10; i++) {
        NSString *str = [NSString stringWithFormat:@"相册%zd", count];
        count++;
        [testData addObject:str];
    }
    return testData;
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.datas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ID" forIndexPath:indexPath];
  
    cell.textLabel.text = self.datas[indexPath.row];
  
  return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  NSLog(@"%@", indexPath);
}

- (NSMutableArray *)datas {
    if (_datas == nil) {
        _datas = [NSMutableArray array];
        NSMutableArray *tmp = [self createTestData];
        [_datas addObjectsFromArray:tmp];
    }
    return _datas;
}

@end
