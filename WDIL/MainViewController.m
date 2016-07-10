//
//  MainViewController.m
//  WDIL
//
//  Created by Macallan on 7/7/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

#import "MainViewController.h"
#import "TableViewCell.h"

@interface MainViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation MainViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource and Delegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

-(TableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tableViewCell"];
    [cell setupWithTitle:@"Hi"];
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

@end
