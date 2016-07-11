//
//  EventDetailViewController.m
//  WDIL
//
//  Created by Macallan on 7/9/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

#import "EventDetailViewController.h"

@interface EventDetailViewController ()

@end

@implementation EventDetailViewController

-(void) viewDidLoad {
    NSLog(@"EventDetailLoaded");
}

-(void) setupWithEvent:(Event*) event {
    self.event = event;
    self.titleLabel.text = self.event.title;
    self.descriptionLabel.text = self.event.info;
    [self updateLastOccuranceLabel];
}

#pragma mark - Setters
-(void)updateLastOccuranceLabel{
    NSString *dateString = [NSDateFormatter localizedStringFromDate:self.event.lastOccurred
                                                          dateStyle:NSDateFormatterShortStyle
                                                          timeStyle:NSDateFormatterFullStyle];
    self.lastOccuranceLabel.text = dateString;
}

#pragma mark - button actions
- (IBAction)updateEventTap:(id)sender {
    [self.event updateTimeLastOccurred];
    [self updateLastOccuranceLabel];
}

- (IBAction)backButtonTap:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
