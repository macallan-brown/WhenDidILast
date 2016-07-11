//
//  Event.m
//  WDIL
//
//  Created by Macallan on 7/9/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

#import "Event.h"

@interface Event()

@property(strong, nonatomic, readwrite) NSDate *lastOccurred;

@end

@implementation Event

-(void) updateTimeLastOccurred {
    self.lastOccurred = [NSDate dateWithTimeIntervalSinceNow:0];
}

@end
