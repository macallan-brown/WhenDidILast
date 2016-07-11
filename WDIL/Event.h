//
//  Event.h
//  WDIL
//
//  Created by Macallan on 7/9/16.
//  Copyright © 2016 Macallan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Event : NSObject

@property (strong, nonatomic, readonly) NSDate *lastOccurred;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *info;

-(void) updateTimeLastOccurred;

@end
