//
//  ExerciseGroup.m
//  FiveThreeOneTracker
//
//  Created by Dan Nguyen on 4/27/14.
//  Copyright (c) 2014 Dan Nguyen. All rights reserved.
//

#import "ExerciseGroup.h"

@implementation ExerciseGroup

- (NSMutableArray *) exerciseGroup
{
  if (!_exerciseGroup) _exerciseGroup = [[NSMutableArray alloc] init];
  return _exerciseGroup;
}

- (NSTimeInterval *) workoutDuration
{
  // code to return the workout duration
  return 0;
}

- (void) addWeightExercise:(WeightExercise*)exercise
{
  
}

@end
