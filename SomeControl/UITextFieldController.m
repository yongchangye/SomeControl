//
//  UITextFieldController.m
//  SomeControl
//
//  Created by 叶永长 on 8/27/15.
//  Copyright (c) 2015 YYC. All rights reserved.
//

#import "UITextFieldController.h"

@interface UITextFieldController ()<UITextFieldDelegate>
{
    UITextField *newTextField;
    UILabel *mainLabel;
}
@end

@implementation UITextFieldController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"UITextField";
    // Do any additional setup after loading the view.
    [self creatTextField];
    [self creatLabel];
}
-(void)creatTextField{
    newTextField = [[UITextField alloc]initWithFrame:CGRectMake(50, 100, 200, 20)];
    newTextField.placeholder = @"这是一个TextField";
    newTextField.font = [UIFont systemFontOfSize:12];
    newTextField.textColor = [UIColor redColor];
    newTextField.layer.cornerRadius = 2;
    newTextField.layer.masksToBounds = YES;
    newTextField.layer.borderWidth = 0.5;
    newTextField.delegate = self;
    [self.view addSubview:newTextField];
}
-(void)creatLabel{
    mainLabel  = [[UILabel alloc]initWithFrame:CGRectMake(50, 200, 200, 20)];
    mainLabel.text = @"textField输入的是:";
    mainLabel.textColor = [UIColor redColor];
    mainLabel.font = [UIFont systemFontOfSize:12];
    [self.view addSubview:mainLabel];
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    mainLabel.text = [NSString stringWithFormat:@"textField输入的是  :    %@",newTextField.text];
    [newTextField resignFirstResponder];
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    mainLabel.text = [NSString stringWithFormat:@"textField输入的是  :    %@",newTextField.text];
    return YES;
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
