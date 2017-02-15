//
//  ViewController.m
//  CommonTools
//
//  Created by hushuangfei on 17/2/15.
//  Copyright © 2017年 Jovision. All rights reserved.
//

#import "ViewController.h"
#import "HSFCommentTools.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *RGBA_ViewBackground;
@property (weak, nonatomic) IBOutlet UIView *HexRBA_ViewBackground;
@property (weak, nonatomic) IBOutlet UILabel *fontLable;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    //RGB使用
    self.RGBA_ViewBackground.backgroundColor = RGB(100.0, 100.0, 120.0);
    
    //HexRGB使用
    self.HexRBA_ViewBackground.backgroundColor = HexRGB(0xaf1245);
    
    //font
    self.fontLable.text = @"字体大小";
    self.fontLable.font = MAIN_FONF_16;
    
    //kScreenHeight || kScreenWidth
    //当前手机屏幕宽度或者高度
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
