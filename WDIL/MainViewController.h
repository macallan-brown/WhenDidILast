//
//  MainViewController.h
//  WDIL
//
//  Created by Macallan on 7/7/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController

- (IBAction)addEventButtonTap:(id)sender;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

