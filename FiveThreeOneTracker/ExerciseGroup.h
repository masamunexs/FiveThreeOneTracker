//
//  ExerciseGroup.h
//  FiveThreeOneTracker
//
//  Created by Dan Nguyen on 4/27/14.
//  Copyright (c) 2014 Dan Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeightExercise.h"

@interface ExerciseGroup : WeightExercise

@property (strong, nonatomic) NSMutableArray *exerciseGroup; // Array of Weight Exercises
@property (nonatomic) NSTimeInterval *restDuration; // break time between sets

- (NSTimeInterval *) workoutDuration;


@end
