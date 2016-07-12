//
//  EventList.h
//  WDIL
//
//  Created by Macallan on 7/9/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Event.h"

@interface EventList : NSObject

-(void) setupEventList;
-(void) addEvent:(Event*) event;
-(Event*) getEvent:(NSInteger) index;
-(NSArray*) getAllEvents;
-(void) removeEvent:(NSInteger) index;
-(NSInteger) count;

+ (id)shared;

@property (strong, nonatomic) NSMutableArray *list;

@end
