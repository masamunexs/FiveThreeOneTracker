//
//  FiveThreeOneSetGroup.h
//  FiveThreeOneTracker
//
//  Created by Dan Nguyen on 4/28/14.
//  Copyright (c) 2014 Dan Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ExerciseGroup.h"

@interface FiveThreeOneSetGroup : ExerciseGroup

- (instancetype)initWithTrainingMax:(NSUInteger)aTrainingMax forWeekCycle:(NSUInteger)aWeekCycle;
- (NSMutableArray*)getWeightsByWeekCycle:(NSUInteger)aWeekCycle;
- (NSMutableArray*)getRepsByWeekCycle:(NSUInteger)aWeekCycle;

@end
