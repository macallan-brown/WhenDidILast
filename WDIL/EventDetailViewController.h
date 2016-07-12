//
//  EventDetailViewController.h
//  WDIL
//
//  Created by Macallan on 7/9/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Event.h"

@interface EventDetailViewController : UIViewController

-(void) setupWithEvent:(Event*) event;

- (IBAction)updateEventTap:(id)sender;
- (IBAction)backButtonTap:(id)sender;

@property (strong, nonatomic) Event *event;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *lastOccuranceLabel;

@end
