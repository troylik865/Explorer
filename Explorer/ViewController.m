//
//  ViewController.m
//  Explorer
//
//  Created by 李彬 on 16/6/24.
//  Copyright © 2016年 李彬. All rights reserved.
//

#import "ViewController.h"
#import <Runtime/Runtime.h>

@interface ViewController () <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation ViewController {
    NSArray *_data;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initParam];
    [self initUI];
}


-(void)initParam {
    _data = @[@{@"name":@"毛玻璃效果",@"className":@"ExplorerBlurController"},
              @{@"name":@"WKWebView",@"className":@""}
              ];
}


-(void)initUI {
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, self.view.width, self.view.height - 64) style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _data.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identified = @"explorerIdentified";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identified];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identified];
    }
    cell.textLabel.text = [_data objectAtIndex:indexPath.row][@"name"];
    cell.detailTextLabel.text = [_data objectAtIndex:indexPath.row][@"name"];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self gotoPage:[_data objectAtIndex:indexPath.row][@"className"]];
}

@end
