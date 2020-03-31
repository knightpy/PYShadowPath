//
//  ViewController.m
//  PYShadowPath
//
//  Created by QJ on 2020/3/31.
//  Copyright © 2020 QJ. All rights reserved.
//

#import "ViewController.h"
#import "UIView+PYShadowPath.h"

#define kScreenWidth        [[UIScreen mainScreen] bounds].size.width
#define kScreenHeight       [[UIScreen mainScreen] bounds].size.height


@interface ViewController ()
@property(nonatomic, strong)UIView * vv ;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _vv = [[UIView alloc]initWithFrame:CGRectMake(30, 100, kScreenWidth - 60, 50)];
    _vv.backgroundColor = [UIColor grayColor];
    [self.view addSubview:_vv];
    
    [_vv PY_SetShadowPathWith:[UIColor redColor] shadowOpacity:0.5 shadowRadius:10 shadowSide:PYShadowPathTop shadowPathWidth:10];
}


@end
