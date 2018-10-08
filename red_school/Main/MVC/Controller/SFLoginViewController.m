//
//  SFLoginViewController.m
//  red_school
//
//  Created by Meeno on 2018/10/8.
//  Copyright © 2018年 red. All rights reserved.
//

#import "SFLoginViewController.h"
#import "SFHttpApiLogin.h"

@interface SFLoginViewController ()

@end

@implementation SFLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self->_isLogining = NO;
    [self initSubviews];
    [self setupSubviews];
}

- (void)initSubviews {
    
    UIButton *loginBtn = [[UIButton alloc] init];
    [[self view] addSubview:loginBtn];
    [loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.width.height.mas_equalTo(44.0);
        make.center.equalTo(self.view);
    }];
    
    [loginBtn setTitle:@"LOGIN" forState:UIControlStateNormal];
    [loginBtn addTarget:self action:@selector(loginBtnClicked) forControlEvents:UIControlEventTouchUpInside];
}

- (void)loginBtnClicked {
    
    if (self->_isLogining == YES)
    {
        NSLog(@"UNDERGOING!!!");
        return;
    }
    //开始登录
    SFHttpApiLogin *api = [[SFHttpApiLogin alloc] init];
    [api requestAsyncWithReturend:^(id response) {
        
        UIAlertView *alert = [UIAlertView bk_alertViewWithTitle:@"Tip" message:@"login success"];
        [alert show];
        self->_isLogining = NO;
    } withProgress:nil withError:^(NSError *error) {
        
        UIAlertView *alert = [UIAlertView bk_alertViewWithTitle:@"Tip" message:@"login fail"];
        [alert show];
        self->_isLogining = NO;
    }];
}

- (void)setupSubviews {
    
    
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
