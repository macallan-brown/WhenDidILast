//
//  TableViewCell.m
//  WDIL
//
//  Created by Macallan on 7/7/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

-(void) setupWithTitle:(NSString *)title{
    [self.titleLabel setText:title];
}
- (IBAction)editButtonTouched:(id)sender {
}

-(void)prepareForReuse{
    [self.titleLabel setText:@""];
}
@end
