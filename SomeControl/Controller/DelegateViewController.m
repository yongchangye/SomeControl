//
//  DelegateViewController.m
//  SomeControl
//
//  Created by 叶永长 on 8/27/15.
//  Copyright (c) 2015 YYC. All rights reserved.
//

#import "DelegateViewController.h"
#import "secondViewController.h"
@interface DelegateViewController ()<changeDelegate>
{
    UITextField *field;
}
@end

@implementation DelegateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"代理delegate";
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(50, 200, 100, 30);
    [button setTitle:@"button" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    field = [[UITextField alloc]initWithFrame:CGRectMake(50, 100, 200, 20)];
    field.placeholder = @"填写内容";
    field.font = [UIFont systemFontOfSize:12];
    field.textColor = [UIColor redColor];
    field.layer.borderWidth = 1;
    field.layer.masksToBounds = YES;
    [self.view addSubview:field];
}
-(void)btnClick:(UIButton *)sender{
    secondViewController *second = [[secondViewController alloc]init];
    second.str = field.text;
    field.text = nil;
    second.delegate = self;
    [self.navigationController pushViewController:second animated:YES];
}
-(void)passValue:(NSString *)str{
    NSLog(@"%@",str);
    field.text = str;
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [field resignFirstResponder];
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
