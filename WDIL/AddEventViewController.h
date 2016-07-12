//
//  AddEventViewController.h
//  WDIL
//
//  Created by Macallan on 7/11/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddEventViewController : UIViewController

- (IBAction)cancelButtonTap:(id)sender;
- (IBAction)saveButtonTap:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;

@property (weak, nonatomic) IBOutlet UITextField *infoTextField;

@end
