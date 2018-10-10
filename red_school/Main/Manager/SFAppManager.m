//
//  SFAppManager.m
//  school
//
//  Created by Oliver Mac on 2018/7/27.
//  Copyright © 2018年 rl. All rights reserved.
//

#import "SFAppManager.h"
#import "SFLoginViewController.h"
#import "SFRootTabBarController.h"

static SFAppManager *_instance = nil;

@implementation SFAppManager

+ (SFAppManager *)shared {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        _instance = [[SFAppManager alloc] init];
    });
    
    return _instance;
}

- (instancetype)init {
    
    self = [super init];
    NSNumber *choosedSchool = [[NSUserDefaults standardUserDefaults] objectForKey:@"SF_CHOOSED_SCHOOL"];
    if ([choosedSchool intValue])
        self->_sf_school = choosedSchool;
    else
        self->_sf_school = [NSNumber numberWithInteger:0];
    return self;
}

- (void)setSf_school:(NSNumber *)sf_school {
    
    self->_sf_school = sf_school;
    [[NSUserDefaults standardUserDefaults] setObject:sf_school forKey:@"SF_CHOOSED_SCHOOL"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (void)setup {
    
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    [[SFAppManager shared] setKeyWindow:window];
    [[SFAppManager shared] loadRootViewController];
    [[[SFAppManager shared] keyWindow] makeKeyAndVisible];
}

- (void)loadRootViewController
{
    
    BOOL isGo = false;
    
    if (isGo)
    {
        
        SFRootTabBarController *root = [[SFRootTabBarController alloc] init];
        [[self keyWindow] setRootViewController:root];
    }
    else
    {
        
        SFLoginViewController *login_vc = [[SFLoginViewController alloc] init];
        [[self keyWindow] setRootViewController:login_vc];
    }
}

- (void)logout {
    
    [[SFUser shared] logout];
    [self loadRootViewController];
}

@end
