//
//  SFRootTabBarController.m
//  red_school
//
//  Created by Meeno on 2018/9/29.
//  Copyright © 2018年 red. All rights reserved.
//

#import "SFRootTabBarController.h"
#import "SFNavigationController.h"
#import "SFHomeViewController.h"
#import "SFMineViewController.h"

@interface SFRootTabBarController ()

@end

@implementation SFRootTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[self tabBar] setTranslucent:NO];
    [[UITabBarItem appearance] setTitleTextAttributes:@{
                                                        NSFontAttributeName:[UIFont fontWithName:@"PingFangSC-Ultralight" size:11.0],
                                                        NSForegroundColorAttributeName:[UIColor blackColor]
                                                        } forState:UIControlStateNormal];
    
    SFHomeViewController *homeVC = [[SFHomeViewController alloc] init];
    SFNavigationController *homeNAV = [[SFNavigationController alloc] initWithRootViewController:homeVC];
    [[homeNAV tabBarItem] setTitle:@"home"];
    
    SFMineViewController *mineVC = [[SFMineViewController alloc] init];
    SFNavigationController *mineNAV = [[SFNavigationController alloc] initWithRootViewController:mineVC];
    [[mineNAV tabBarItem] setTitle:@"mine"];
    
    [self setViewControllers:@[homeNAV, mineNAV]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
