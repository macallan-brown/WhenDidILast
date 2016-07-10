//
//  TableViewCell.h
//  WDIL
//
//  Created by Macallan on 7/7/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
- (IBAction)editButtonTouched:(id)sender;

-(void)setupWithTitle:(NSString*)title;

@end
