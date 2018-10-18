//
//  SFBaseViewController.m
//  red_school
//
//  Created by Meeno on 2018/9/29.
//  Copyright © 2018年 red. All rights reserved.
//

#import "SFBaseViewController.h"

@interface SFBaseViewController ()

@end

@implementation SFBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self pre_config];
}

- (void)pre_config {
    
    [[self view] setBackgroundColor:[UIColor colorWithHexString:@"f8f8f8"]];
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
