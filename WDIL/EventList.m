//
//  EventList.m
//  WDIL
//
//  Created by Macallan on 7/9/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

#import "EventList.h"

@interface EventList ()

@end

@implementation EventList

+ (id)shared {
    static EventList *sharedEventList = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedEventList = [[self alloc] init];
        [sharedEventList setupEventList];
    });
    return sharedEventList;
}

-(void) setupEventList {
    self.list = [[NSMutableArray alloc] init];
    Event *testEvent = [[Event alloc] init];
    testEvent.title = @"Watch a movie";
    [testEvent updateTimeLastOccurred];
    [self addEvent:testEvent];
}

-(void) addEvent:(Event*) event {
    [self.list addObject:event];
}

-(Event*) getEvent:(NSInteger) index {
    return [self.list objectAtIndex:index];
}

-(NSArray*) getAllEvents {
    return [self.list copy];
}

-(void) removeEvent:(NSInteger)index {
    [self.list removeObjectAtIndex:index];
}

-(NSInteger) count {
    return [self.list count];
}


@end
