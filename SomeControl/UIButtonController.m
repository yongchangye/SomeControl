//
//  UIButtonController.m
//  SomeControl
//
//  Created by 叶永长 on 8/27/15.
//  Copyright (c) 2015 YYC. All rights reserved.
//

#import "UIButtonController.h"

@interface UIButtonController ()

@end

@implementation UIButtonController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"UIButton&UIAlertView";
    // Do any additional setup after loading the view.
    [self creatButton];
}
-(void)creatButton{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(50, 100, 100, 30);
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];
    button.layer.cornerRadius = 5;
    button.layer.masksToBounds = YES;
    [button setTitle:@"button" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
//    CALayer *kklayer = [[CALayer alloc]init];
//    kklayer.backgroundColor = [UIColor grayColor].CGColor;
//    kklayer.frame = CGRectMake(10, 200, 40, 40);
//    kklayer.cornerRadius = 5;
//    [self.view.layer addSublayer:kklayer];
//    
//    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"position"];
//    animation.fromValue = [NSValue valueWithCGPoint:kklayer.position];
//    CGPoint toPoint = kklayer.position;
//    toPoint.x += 180;
//    animation.toValue = [NSValue valueWithCGPoint:toPoint];
//    
//    CABasicAnimation *rotateAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.x"];
//    rotateAnimation.fromValue = [NSNumber numberWithFloat:0.0];
//    rotateAnimation.toValue = [NSNumber numberWithFloat:6.0*M_PI];
//    
//    CABasicAnimation *scaoleAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale.x"];
//    scaoleAnimation.duration = 3;
//    scaoleAnimation.autoreverses = YES;
//    scaoleAnimation.fromValue = [NSNumber numberWithFloat:1.0];
//    scaoleAnimation.toValue = [NSNumber numberWithFloat:2.5];
//    scaoleAnimation.fillMode = kCAFillModeForwards;
//    
//    
//    CAAnimationGroup *group = [CAAnimationGroup animation];
//    group.autoreverses = YES;
//    group.duration = 3.0;
//    group.animations = [NSArray arrayWithObjects:animation,rotateAnimation,scaoleAnimation, nil];
//    group.fillMode = kCAFillModeForwards;
//    
//    [kklayer addAnimation:group forKey:@"kkLayerMove"];

    
}
-(void)btnClick:(UIButton *)sender{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"点击了button" message:@"" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:@"取消", nil];
    [alert show];
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
