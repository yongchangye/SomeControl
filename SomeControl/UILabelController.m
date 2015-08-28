//
//  UILabelController.m
//  SomeControl
//
//  Created by 叶永长 on 8/27/15.
//  Copyright (c) 2015 YYC. All rights reserved.
//

#import "UILabelController.h"

@interface UILabelController ()

@end

@implementation UILabelController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor  =[UIColor whiteColor];
    self.title = @"UILabel";
    [self creatLabel];
    // Do any additional setup after loading the view.
}
-(void)creatLabel{
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(50, 100, 100, 20)];
    label.text = @"一个label";
    label.textColor = [UIColor redColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:12];
    label.backgroundColor = [UIColor grayColor];
    label.layer.cornerRadius = 3;
    label.layer.masksToBounds = YES;
    [self.view addSubview:label];
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
