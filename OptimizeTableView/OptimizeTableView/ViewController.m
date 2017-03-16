//
//  ViewController.m
//  OptimizeTableView
//
//  Created by 程天恒 on 2017/3/4.
//  Copyright © 2017年 Vic. All rights reserved.
//

#import "ViewController.h"
#import "AddViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
// 电影列表
@property (nonatomic, strong) NSMutableArray *movieList;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"豆瓣 Top 10";
    [self loadData];
    
    self.view.backgroundColor = [UIColor whiteColor];
    CGRect tableViewFrame = [UIScreen mainScreen].bounds;
    self.tableView = [[UITableView alloc]initWithFrame:tableViewFrame style:UITableViewStyleGrouped];
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc]initWithTitle:@"添加新电影" style:UIBarButtonItemStyleDone target:self action:@selector(addNewMovie)];
    
    self.navigationItem.leftBarButtonItem = addButton;
    [self.view addSubview:self.tableView];

    // Do any additional setup after loading the view, typically from a nib.
}


// 加载数据
- (void)loadData {

}

- (void)addNewMovie {
    AddViewController *controller = [AddViewController new];
    [self.navigationController pushViewController:controller animated:true];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.movieList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // Use your custom cell
    //return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
    }
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
