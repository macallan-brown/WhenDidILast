//
//  MainViewController.m
//  WDIL
//
//  Created by Macallan on 7/7/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

#import "MainViewController.h"
#import "TableViewCell.h"
#import "EventDetailViewController.h"
#import "Event.h"
#import "EventList.h"

@interface MainViewController () <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) EventList *eventList;

@end

@implementation MainViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self.tableView reloadData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Getters

-(EventList*) eventList{
    if(_eventList){
        return _eventList;
    }
    
    _eventList = [[EventList alloc] init];
    [_eventList setupEventList];
    return _eventList;
}

#pragma mark - UITableViewDataSource and Delegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.eventList count];
}

-(TableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tableViewCell"];
    [cell setupWithTitle: [self.eventList getEvent: indexPath.row].title];
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    EventDetailViewController *eventViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"eventDetailViewController"];
    [self presentViewController:eventViewController animated:YES completion:nil];
    [eventViewController setupWithEvent:[self.eventList getEvent:indexPath.row]];
}

@end
