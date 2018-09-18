//
//  ViewController.m
//  RunningLantern
//
//  Created by 惠上科技 on 2018/9/18.
//  Copyright © 2018年 惠上科技. All rights reserved.
//

#import "ViewController.h"
#import "SXMarquee.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (strong, nonatomic) SXMarquee *nameView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *text = @"杜卡迪看安静到拉萨打卡加大萨达将拉开就到啦升级到了";
    _nameView = [[SXMarquee alloc]initWithFrame:_textLabel.frame speed:4 Msg:text bgColor:[UIColor greenColor] txtColor:[UIColor blackColor]];
    [_nameView changeMarqueeLabelFont:[UIFont systemFontOfSize:13]];
    [self.view addSubview:_nameView];
    [_nameView start];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    if (_nameView) {
        [_nameView start];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
