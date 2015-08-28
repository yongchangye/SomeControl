//
//  UIScrollViewController.m
//  SomeControl
//
//  Created by 叶永长 on 8/27/15.
//  Copyright (c) 2015 YYC. All rights reserved.
//

#import "UIScrollViewController.h"

@interface UIScrollViewController ()
{
    UIScrollView *mainScrollView;
    
    UIImageView *mainImageView;
}
@end

@implementation UIScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"UIScrollView";
    // Do any additional setup after loading the view.
    [self creatScrollView];
}
-(void)creatScrollView{
    mainScrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(50, 100, 200, 300)];
    mainScrollView.backgroundColor = [UIColor redColor];
    mainScrollView.contentSize = CGSizeMake(600, 0);
    mainScrollView.pagingEnabled = YES;
    [self.view addSubview:mainScrollView];
    
    mainImageView = [[UIImageView alloc]initWithFrame:CGRectMake(10, 0, 60, 60)];
    [mainImageView setImage:[UIImage imageNamed:@"aaaaa.jpg"]];
    [mainScrollView addSubview:mainImageView];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
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
