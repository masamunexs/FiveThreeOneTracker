//
//  WeightExercise.m
//  FiveThreeOneTracker
//
//  Created by Dan Nguyen on 4/27/14.
//  Copyright (c) 2014 Dan Nguyen. All rights reserved.
//

#import "WeightExercise.h"

@implementation WeightExercise

@synthesize targetWeight;
@synthesize targetReps;
@synthesize completedWeight;
@synthesize completedReps;
@synthesize startTime;
@synthesize endTime;
@synthesize isWarmup;
@synthesize completed;

- (instancetype)initWithTargetWeight:(NSUInteger)weight withTargetReps:(NSInteger)reps isWarmup:(BOOL)warmup
{
  self = [super init];
  if (self)
  {
    isWarmup = warmup;
    targetWeight = weight;
    targetReps = reps;
  }
  else
  {
    self = nil;
  }
  return self;
}

- (BOOL)startWorkout
{
  if (!startTime)
  {
    startTime = [NSDate date];
    return YES;    
  }
  else
  {
    return NO;
  }
}

- (BOOL)endWorkout
{
  // make sure it's only called once.
  if (!endTime)
  {
    endTime = [NSDate date];
    return YES;
  }
  else
  {
    return NO;
  }
}

- (int)singleRepMax
{
  return (int)floor((double)completedWeight * (1 + (double)completedReps / 30));
}

- (void)completedWeightOf:(NSUInteger)weight withRepsOf:(NSInteger)reps
{
  
  completedWeight = weight;
  completedReps = reps;


}

@end
