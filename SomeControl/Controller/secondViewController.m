//
//  secondViewController.m
//  SomeControl
//
//  Created by 叶永长 on 8/27/15.
//  Copyright (c) 2015 YYC. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()<UITextFieldDelegate>
{
    UITextField *mainTextField;
}
@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    mainTextField = [[UITextField alloc]initWithFrame:CGRectMake(50, 100, 200, 20)];
    mainTextField.placeholder = self.str;
    mainTextField.font = [UIFont systemFontOfSize:12];
    mainTextField.textColor = [UIColor redColor];
    mainTextField.layer.borderWidth = 1;
    mainTextField.layer.masksToBounds = YES;
    mainTextField.delegate = self;
    [self.view addSubview:mainTextField];
    
    
    
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [mainTextField resignFirstResponder];
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    if (self.delegate &&[self.delegate respondsToSelector:@selector(passValue:)]) {
        [self.delegate passValue:textField.text];
    }
    [self.navigationController popViewControllerAnimated:YES];
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
