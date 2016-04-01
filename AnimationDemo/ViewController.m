//
//  ViewController.m
//  AnimationDemo
//
//  Created by Lois_pan on 16/3/2.
//  Copyright © 2016年 Lois_pan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@property (nonatomic, copy) NSString * str;
@property (nonatomic,copy)  NSString*str1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton * button2 = [[UIButton alloc] init];
    button2.frame = CGRectMake(50, 100, 80, 80);
    button2.layer.cornerRadius = 40;
    button2.backgroundColor = [UIColor blackColor];
    button2.alpha = 0.1;
    [self initIBeaconAnimateShort: button2];
    [self.view addSubview:button2];

    UIButton * button1 = [[UIButton alloc] init];
    button1.frame = CGRectMake(50, 100, 40, 40);
    button1.center = button2.center;
    button1.backgroundColor = [UIColor redColor];
    button1.layer.cornerRadius = 20;
    button1.alpha = 0.3;
    [self initIBeaconAnimate:button1];
    [self.view addSubview:button1];

    UIButton * clickButton = [[UIButton alloc] init];
    clickButton.frame = CGRectMake(50, 100, 80, 80);
    [clickButton addTarget:self action:@selector(clickButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:clickButton];
    
    
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.frame = CGRectMake(0, 0, 264, 256);
    imageView.center = self.view.center;
    UIImage * image = [UIImage imageNamed:@"Lover.png"];
    
    //Here you can set the picture's sides drawing parameters
    image = [image resizableImageWithCapInsets:UIEdgeInsetsMake(40, 0, 0, 0) resizingMode:UIImageResizingModeStretch];
    imageView.image = image;
    
    [self.view addSubview:imageView];
}

-(void)clickButtonClick
{
    NSLog(@"呵呵哒");
}


-(void)initIBeaconAnimate:(UIButton *)button{
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    
    animation.duration = 0.5;
    animation.repeatCount = INTMAX_MAX;
    animation.autoreverses = YES;
    
    animation.fromValue = [NSNumber numberWithFloat:1.0];
    animation.toValue = [NSNumber numberWithFloat:1.1];
    [button.layer addAnimation:animation forKey:@"scale-layer"];
}


-(void)initIBeaconAnimateShort:(UIButton *)button{
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    
    animation.duration = 0.5;
    animation.repeatCount = INTMAX_MAX;
    animation.autoreverses = YES;
    
    animation.fromValue = [NSNumber numberWithFloat:1.0];
    animation.toValue = [NSNumber numberWithFloat:0.9];
    [button.layer addAnimation:animation forKey:@"scale-layer"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
