//
//  RootViewController.m
//  XCTheme_Example
//
//  Created by 彭懂 on 2021/2/4.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

#import "RootViewController.h"
#import "XCTheme_Example-Swift.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self themeUI];
}

// 皮肤模式
- (void)themeUI {
    self.view.theme_oc.backgroundColor = XCThemeColor.cffffff;
    [self.navigationController.navigationBar.theme_oc setBackgroundColor:XCThemeColor.cffffff];

    UIBarButtonItem *right1 = [[UIBarButtonItem alloc] initWithImage:nil style:UIBarButtonItemStylePlain target:self action:@selector(navMoreClicked)];
    [right1.theme_oc setImage:[XCThemeImage name:@"nav_more"]];

    UIBarButtonItem *right2 = [[UIBarButtonItem alloc] initWithImage:nil style:UIBarButtonItemStylePlain target:self action:@selector(navNotiClicked)];
    [right2.theme_oc setImage:[XCThemeImage name:@"nav_alert"]];

    self.navigationItem.rightBarButtonItems = @[right1, right2];

    CGRect frame = CGRectMake(0, 0, 200, 44);
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.textAlignment = NSTextAlignmentCenter;
    label.theme_oc.textColor = XCThemeColor.c121213;
    label.text = @"主题";
    self.navigationItem.titleView = label;

    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    UIImageView *topImage = [[UIImageView alloc] initWithFrame:CGRectMake((width - 300) / 2.0, 100, 300, 220)];
    topImage.theme_oc.image = [XCThemeImage name:@"zoom_guide"];
    [self.view addSubview:topImage];

    UIButton *qq = [UIButton buttonWithType:UIButtonTypeCustom];
    qq.frame = CGRectMake(50, 330, 60, 60);
    [qq.theme_oc setImage:[XCThemeImage name:@"qq"] for:UIControlStateNormal];
    [qq addTarget:self action:@selector(btnclicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:qq];

    UIButton *wechat = [UIButton buttonWithType:UIButtonTypeCustom];
    wechat.frame = CGRectMake(width - 50 - 60, 330, 60, 60);
    [wechat.theme_oc setImage:[XCThemeImage name:@"wechat"] for:UIControlStateNormal];
    [wechat addTarget:self action:@selector(btnclicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:wechat];

    UIButton *normal = [UIButton buttonWithType:UIButtonTypeCustom];
    normal.frame = CGRectMake(30, 400, 100, 50);
    [normal setTitle:@"正常模式" forState:UIControlStateNormal];
    [normal.theme_oc setBackgroundColor:XCThemeColor.c149eff];
    [normal.theme_oc setTitleColor:XCThemeColor.cffffff for:UIControlStateNormal];
    [normal addTarget:self action:@selector(normalClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:normal];

    UIButton *night = [UIButton buttonWithType:UIButtonTypeCustom];
    night.frame = CGRectMake(width - 100 - 30, 400, 100, 50);
    [night setTitle:@"黑夜模式" forState:UIControlStateNormal];
    [night.theme_oc setBackgroundColor:XCThemeColor.c149eff];
    [night.theme_oc setTitleColor:XCThemeColor.cffffff for:UIControlStateNormal];
    [night addTarget:self action:@selector(nightClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:night];
}

// 正常模式
- (void)systemUI {
    self.view.backgroundColor = UIColor.whiteColor;
    [self.navigationController.navigationBar  setBackgroundColor:UIColor.whiteColor];

    UIBarButtonItem *right1 = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"nav_more"] style:UIBarButtonItemStylePlain target:self action:@selector(navMoreClicked)];

    UIBarButtonItem *right2 = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"nav_alert"] style:UIBarButtonItemStylePlain target:self action:@selector(navNotiClicked)];

    self.navigationItem.rightBarButtonItems = @[right1, right2];

    CGRect frame = CGRectMake(0, 0, 200, 44);
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = UIColor.blackColor;
    label.text = @"主题";
    self.navigationItem.titleView = label;

    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    UIImageView *topImage = [[UIImageView alloc] initWithFrame:CGRectMake((width - 300) / 2.0, 100, 300, 220)];
    topImage.image = [UIImage imageNamed:@"moment_zone_start_guide"];
    [self.view addSubview:topImage];

    UIButton *qq = [UIButton buttonWithType:UIButtonTypeCustom];
    qq.frame = CGRectMake(50, 330, 60, 60);
    [qq setImage:[UIImage imageNamed:@"zy_ic_login_otherway_qq"] forState:UIControlStateNormal];
    [qq addTarget:self action:@selector(btnclicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:qq];

    UIButton *wechat = [UIButton buttonWithType:UIButtonTypeCustom];
    wechat.frame = CGRectMake(width - 50 - 60, 330, 60, 60);
    [wechat setImage:[UIImage imageNamed:@"zy_ic_login_otherway_wechat"] forState:UIControlStateNormal];
    [wechat addTarget:self action:@selector(btnclicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:wechat];

    UIButton *normal = [UIButton buttonWithType:UIButtonTypeCustom];
    normal.frame = CGRectMake(30, 400, 100, 50);
    [normal setTitle:@"正常模式" forState:UIControlStateNormal];
    [normal setBackgroundColor:[UIColor blueColor]];
    [normal setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [normal addTarget:self action:@selector(normalClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:normal];

    UIButton *night = [UIButton buttonWithType:UIButtonTypeCustom];
    night.frame = CGRectMake(width - 100 - 30, 400, 100, 50);
    [night setTitle:@"黑夜模式" forState:UIControlStateNormal];
    [night setBackgroundColor:[UIColor blueColor]];
    [night setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [night addTarget:self action:@selector(nightClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:night];
}

- (void)navMoreClicked {
    TestViewController *vc = [[TestViewController alloc] init];
    [self.navigationController pushViewController:vc animated:true];
}

- (void)navNotiClicked {
    TestViewController *vc = [[TestViewController alloc] init];
    vc.ismodel = true;
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    [self presentViewController:nav animated:true completion:nil];
}

- (void)normalClicked {
    [PPThemeConfig configDefault];
}

- (void)nightClicked {
    [PPThemeConfig switchTheme];
}

- (void)btnclicked {

}

@end
