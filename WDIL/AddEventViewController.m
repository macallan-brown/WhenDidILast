//
//  AddEventViewController.m
//  WDIL
//
//  Created by Macallan on 7/11/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

#import "AddEventViewController.h"
#import "EventList.h"
#import "Event.h"

@implementation AddEventViewController

- (IBAction)cancelButtonTap:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)saveButtonTap:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
    Event *event = [[Event alloc] init];
    [event setTitle: self.titleTextField.text];
    [event setInfo: self.infoTextField.text];
    [[EventList shared] addEvent:event];
    
    
}

@end
