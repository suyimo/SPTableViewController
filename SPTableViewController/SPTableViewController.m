//
//  ZZTableViewController.m
//  Ours
//
//  Created by iMac on 16/7/14.
//  Copyright © 2016年 Eric. All rights reserved.
//

#import "SPTableViewController.h"
@interface SPTableViewController ()

@end

@implementation SPTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView.frame = self.view.bounds;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    self.tableView.tableFooterView = [self tableViewFooterView];
    self.tableView.tableHeaderView = [self tableViewHeaderView];
    
   
}

- (UIView *)tableViewFooterView {
    return [[UIView alloc]init];
}

- (UIView *)tableViewHeaderView {
    return [[UIView alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dataArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.dataArray[section] count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SPBaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[self cellIdentifyAtIndexPath:indexPath] forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.tag = indexPath.section*10000 + indexPath.row;
    cell.delegate = self;
    [cell configData:self.dataArray[indexPath.section][indexPath.row]];
    return cell;
}


- (NSString *)cellIdentifyAtIndexPath:(NSIndexPath *)indexPath {
    return [NSString stringWithFormat:@"%@Cell",NSStringFromClass([self class])];
}

- (NSArray<NSString *> *)registerCell {
    return @[[NSString stringWithFormat:@"%@Cell",NSStringFromClass([self class])]];
}

- (void)cell:(SPBaseTableViewCell *)cell InteractionEvent:(id)clickInfo {
    
}

- (UITableView *)tableView {
    if (_tableView == nil) {
        _tableView = [[UITableView alloc]init];
        for (NSString *cell in [self registerCell]) {
            [self.tableView registerClass:NSClassFromString(cell) forCellReuseIdentifier:cell];
        }
        

    }
    return _tableView;
}

- (NSMutableArray *)dataArray{
    if (_dataArray == nil) {
        _dataArray = [NSMutableArray arrayWithCapacity:0];
    }
    return _dataArray;
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
