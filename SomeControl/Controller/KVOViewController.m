//
//  KVOViewController.m
//  SomeControl
//
//  Created by 叶永长 on 8/27/15.
//  Copyright (c) 2015 YYC. All rights reserved.
//

#import "KVOViewController.h"
#import "StockData.h"
@interface KVOViewController ()
{
    StockData *stockKVO;
    UILabel *label;
    int a;
}
@end

@implementation KVOViewController
-(void)viewWillDisappear:(BOOL)animated{
    [stockKVO removeObserver:self forKeyPath:@"price"];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    a= 10;
    stockKVO = [[StockData alloc]init];
    [stockKVO setValue:@"YE" forKey:@"name"];
    [stockKVO setValue:@"10" forKey:@"price"];
    [stockKVO addObserver:self forKeyPath:@"price" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:NULL];
    
    label  = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 30)];
    label.text = [stockKVO valueForKey:@"price"];
    label.textColor = [UIColor redColor];
    [self.view addSubview:label];
    
    
    UIButton *b = [UIButton buttonWithType:UIButtonTypeContactAdd];
    b.frame = CGRectMake(100, 200, 100, 30);
    [b addTarget:self action:@selector(BtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:b];
}
-(void)BtnClick:(UIButton *)sender{
    a= a+10;
    [stockKVO setValue:[NSString stringWithFormat:@"%d",a] forKey:@"price"];
    
}
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    if ([keyPath isEqualToString:@"price"]) {
        label.text = [stockKVO valueForKey:@"price"];
    }
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
