//
//  ViewController.m
//  LineViewDemo
//
//  Created by qianfeng007 on 15/8/6.
//  Copyright (c) 2015年 刘卫星. All rights reserved.
//

#import "ViewController.h"
#import "LWXView.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)UITableView*tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView.dataSource=self;
    self.tableView.delegate=self;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    [self.view addSubview:self.tableView];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell*cell=[tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    if (indexPath.row%2==1) {
        
        LWXView*view=[[LWXView alloc]initWithFrame:CGRectMake(0, 7, self.view.frame.size.width, 30) Width:2 Color:[UIColor greenColor] FromPoint:CGPointMake(0, 0) Destination:CGPointMake(100, 20)];
        
        [cell addSubview:view];
        
    } else {
        
        UILabel*label=[[UILabel alloc]initWithFrame:CGRectMake(0, 21, 100, 2)];
        label.backgroundColor=[UIColor blackColor];
        
        [cell addSubview:label];
    }
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(void)didReceiveMemoryWarning{

}

@end
