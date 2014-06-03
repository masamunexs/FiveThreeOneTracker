//
//  WeightExercise.h
//  FiveThreeOneTracker
//
//  Created by Dan Nguyen on 4/27/14.
//  Copyright (c) 2014 Dan Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <math.h>

@interface WeightExercise : NSObject

@property (nonatomic) NSInteger targetWeight;
@property (nonatomic) NSInteger targetReps;
@property (nonatomic) NSInteger completedWeight;
@property (nonatomic) NSInteger completedReps;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;
@property (nonatomic) BOOL isWarmup; // BOOL to indicate
@property (nonatomic) BOOL completed; //workout completed

- (instancetype)initWithTargetWeight:(NSUInteger)weight withTargetReps:(NSInteger)reps isWarmup:(BOOL)warmup; // should always use this to instantiate.

- (BOOL)startWorkout; // sets the start time for the workout, returns false if the start time has already been set.
- (BOOL)endWorkout; // sets the end time for the workout, returns whether or not it has been set (will not set if it's already been set)
- (int)singleRepMax;
- (void)completedWeightOf:(NSUInteger)weight withRepsOf:(NSInteger)reps;

@end
