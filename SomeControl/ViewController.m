//
//  ViewController.m
//  SomeControl
//
//  Created by 叶永长 on 8/27/15.
//  Copyright (c) 2015 YYC. All rights reserved.
//

#import "ViewController.h"
#import "ViewCell.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *mainTableView;
    NSArray *dataArray;
    NSArray *titleDataArray;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeContactAdd];
    rightButton.frame = CGRectMake(0, 0, 30, 30);
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc]initWithCustomView:rightButton];
    self.navigationItem.rightBarButtonItem = rightItem;
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    self.title = @"列表";
//    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 20)];
//    label.text = @"列表";
//    label.textColor = [UIColor blackColor];
//    self.navigationItem.titleView = label;
    dataArray = @[@"UIButtonController",@"UILabelController",@"UITextFieldController",@"UIScrollViewController",@"DelegateViewController",@"KVOViewController"];
    titleDataArray = @[@"UIButton&UIAlertView",@"UILabel",@"UITextField",@"UIScrollView",@"代理delegate",@"kvo机制"];
    mainTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, MAX_WIDTH(self.view), MAX_HEIGHT(self.view))];
    mainTableView.delegate = self;
    mainTableView.dataSource = self;
    [self.view addSubview:mainTableView];
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //点击cell调用方法
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    Class cls = NSClassFromString(dataArray[indexPath.row]);
    UIViewController *view = [[cls alloc]init];
    [self.navigationController pushViewController:view animated:YES];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return dataArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellDefine = @"cellDefine";
    ViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellDefine];
    if (nil == cell) {
        cell = [[ViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellDefine];
    }
    cell.textLabel.text = titleDataArray[indexPath.row];
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
