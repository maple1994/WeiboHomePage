//
//  ViewController.m
//  WeiboHomePage
//
//  Created by Maple on 16/10/16.
//  Copyright © 2016年 Maple. All rights reserved.
//

#import "ViewController.h"
#import "MyNavigationController.h"
#import "HomePageViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)homePage:(id)sender
{
  HomePageViewController *vc = [[HomePageViewController alloc] init];
  [self.navigationController pushViewController:vc animated:YES];
}


@end
