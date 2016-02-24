//
//  ViewController.m
//  navTest
//
//  Created by Lrs on 13-10-15.
//  Copyright (c) 2013年 Lrs. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
#import "AssistiveTouch.h"
@interface ViewController ()
{
 AssistiveTouch *mwindow;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *contentLabel = [[UILabel alloc]init];
    contentLabel.textColor = [UIColor whiteColor];
    contentLabel.backgroundColor = [UIColor clearColor];
    //contentLabel.textAlignment = NSTextAlignmentCenter;
    contentLabel.font = [UIFont boldSystemFontOfSize:13.0];
    contentLabel.text = @"123456789";
    
    CGSize size = [contentLabel.text  sizeWithFont:contentLabel.font constrainedToSize:CGSizeMake(80, 100) lineBreakMode:NSLineBreakByWordWrapping];
    UIImage* image = [UIImage imageNamed:@"Point.png"];
    
    //选取某一像素进行放大
    image = [image stretchableImageWithLeftCapWidth:20 topCapHeight:15];
    contentLabel.frame = CGRectMake(15, 4, size.width, size.height);
    UIImageView* updateImage = [[UIImageView alloc]initWithFrame:CGRectMake(320-30-size.width, 5, 30+size.width ,10+size.height )];
     updateImage.image = image;
    [updateImage addSubview:contentLabel];
    
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc]initWithCustomView:updateImage];
    //self.navigationItem.rightBarButtonItem = rightBtn;
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(100, 300, 120, 30);
    [btn setTitle:@"推出" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

    //悬浮窗测试
    mwindow = [[AssistiveTouch alloc]initWithFrame:CGRectMake(100, 200, 40, 40) imageName:@"1.png"];
}

-(void)buttonClick
{
    FirstViewController *first = [[FirstViewController alloc]init];
    [self.navigationController pushViewController:first animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
