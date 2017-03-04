//
//  AddViewController.m
//  OptimizeTableView
//
//  Created by 程天恒 on 2017/3/4.
//  Copyright © 2017年 Vic. All rights reserved.
//

#import "AddViewController.h"

@interface AddViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
// 电影列表
@property (nonatomic, strong) NSMutableArray *movieList;

@end

@implementation AddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadData];
    CGRect tableViewFrame = [UIScreen mainScreen].bounds;
    self.tableView = [[UITableView alloc]initWithFrame:tableViewFrame style:UITableViewStyleGrouped];
    
    //self.tableView = [[UITableView alloc]initWithFrame:tableViewFrame];
    
    self.title = @"添加";
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadData {
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.movieList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil) {
        cell = [UITableViewCell new];
    }
    for(UIView *view in cell.contentView.subviews) {
        [view removeFromSuperview];
    }
    NSDictionary *dict = self.movieList[indexPath.section];
    UILabel *titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(150, 70, 200, 40)];
    titleLabel.text = [dict valueForKey:@"name"];
    [cell.contentView addSubview:titleLabel];
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(20, 10, 100, 160)];
    imageView.image = ;
    [cell.contentView addSubview:imageView];
    
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *dict = [self.movieList objectAtIndex:indexPath.row];
    // 成功选择了电影
    [self.navigationController popViewControllerAnimated:true];
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
