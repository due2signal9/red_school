//
//  SFNavigationController.m
//  red_school
//
//  Created by Meeno on 2018/9/29.
//  Copyright © 2018年 red. All rights reserved.
//

#import "SFNavigationController.h"

@interface SFNavigationController ()

@end

@implementation SFNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self pre_config];
}

- (void)pre_config {
    
    [[self navigationBar] setBackgroundColor:[UIColor whiteColor]];
    [[self navigationBar] setTranslucent:NO];
    //设置阴影
    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowColor = [UIColor whiteColor];
    shadow.shadowOffset = CGSizeMake(0, 0);
    [[self navigationBar] setTitleTextAttributes:@{
                                                   NSFontAttributeName:[UIFont fontWithName:@"PingFangSC-Ultralight" size:17],
                                                   NSForegroundColorAttributeName:[UIColor blackColor],
                                                   NSShadowAttributeName:shadow
                                                   }];
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
