//
//  ViewController.m
//  prompt
//
//  Created by 汤义 on 15/9/29.
//  Copyright © 2015年 汤义. All rights reserved.
//

#import "ViewController.h"
#import "promptView.h"
#import "promptView+TY.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(50, 200, 100, 50);
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"点击" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(button) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UIButton * buttons = [UIButton buttonWithType:UIButtonTypeCustom];
    buttons.frame = CGRectMake(50, 400, 100, 50);
    buttons.backgroundColor = [UIColor redColor];
    [buttons setTitle:@"开始" forState:UIControlStateNormal];
    [buttons addTarget:self action:@selector(buttons) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttons];
    
}
-(void)button
{
    [promptView AddDeleteView];
    [promptView BeingLoaded:@"加载完成"];
}
-(void)buttons
{
  [promptView AddView];
    [promptView BeingLoaded:@"正在加载中......"];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
