//
//  FiveThreeOneSetGroup.m
//  FiveThreeOneTracker
//
//  Created by Dan Nguyen on 4/28/14.
//  Copyright (c) 2014 Dan Nguyen. All rights reserved.
//

#import "FiveThreeOneSetGroup.h"

@implementation FiveThreeOneSetGroup

- (instancetype)initWithTrainingMax:(NSUInteger)aTrainingMax forWeekCycle:(NSUInteger)aWeekCycle
{
  self = [super init];
  if (self)
  {

    NSMutableArray *weightings = [self getWeightsByWeekCycle:aWeekCycle];
    NSMutableArray *reps = [self getRepsByWeekCycle:aWeekCycle];
    for (NSUInteger i = 0; i < [weightings count]; ++i)
    {
      double targetWeight = (double)aTrainingMax * [weightings[i] doubleValue];
      if (i < 3)
      {
        WeightExercise *exercise = [[WeightExercise alloc]initWithTargetWeight:targetWeight withTargetReps:(NSInteger)reps[i] isWarmup:YES];
        [self.exerciseGroup addObject:exercise];
      }
      else
      {
        WeightExercise *exercise = [[WeightExercise alloc]initWithTargetWeight:targetWeight withTargetReps:(NSInteger)reps[i] isWarmup:NO];
        [self.exerciseGroup addObject:exercise];
      }
      
    }
  }
  else
  {
    self = nil;
  }
  return self;
}

- (NSMutableArray*)getWeightsByWeekCycle:(NSUInteger)aWeekCycle
{


  NSMutableArray *weightArray = [[NSMutableArray alloc]init];
  switch (aWeekCycle)
  {
    case 1:
      [weightArray addObject:[NSNumber numberWithDouble:0.4]];
      [weightArray addObject:[NSNumber numberWithDouble:0.5]];
      [weightArray addObject:[NSNumber numberWithDouble:0.6]];
      [weightArray addObject:[NSNumber numberWithDouble:0.65]];
      [weightArray addObject:[NSNumber numberWithDouble:0.75]];
      [weightArray addObject:[NSNumber numberWithDouble:0.85]];
      break;
    case 2:
      [weightArray addObject:[NSNumber numberWithDouble:0.4]];
      [weightArray addObject:[NSNumber numberWithDouble:0.5]];
      [weightArray addObject:[NSNumber numberWithDouble:0.6]];
      [weightArray addObject:[NSNumber numberWithDouble:0.7]];
      [weightArray addObject:[NSNumber numberWithDouble:0.8]];
      [weightArray addObject:[NSNumber numberWithDouble:0.9]];
      break;
    case 3:
      [weightArray addObject:[NSNumber numberWithDouble:0.4]];
      [weightArray addObject:[NSNumber numberWithDouble:0.5]];
      [weightArray addObject:[NSNumber numberWithDouble:0.6]];
      [weightArray addObject:[NSNumber numberWithDouble:0.75]];
      [weightArray addObject:[NSNumber numberWithDouble:0.85]];
      [weightArray addObject:[NSNumber numberWithDouble:0.95]];
      break;
    case 4:
      [weightArray addObject:[NSNumber numberWithDouble:0.4]];
      [weightArray addObject:[NSNumber numberWithDouble:0.5]];
      [weightArray addObject:[NSNumber numberWithDouble:0.6]];
      [weightArray addObject:[NSNumber numberWithDouble:0.4]];
      [weightArray addObject:[NSNumber numberWithDouble:0.5]];
      [weightArray addObject:[NSNumber numberWithDouble:0.6]];
      break;
  }
  return weightArray;
}


- (NSMutableArray*)getRepsByWeekCycle:(NSUInteger)aWeekCycle
{
  NSMutableArray *weightArray = [[NSMutableArray alloc]init];
  switch (aWeekCycle)
  {
    case 1:
      [weightArray addObject:[NSNumber numberWithInt:5]];
      [weightArray addObject:[NSNumber numberWithInt:5]];
      [weightArray addObject:[NSNumber numberWithInt:5]];
      [weightArray addObject:[NSNumber numberWithInt:5]];
      [weightArray addObject:[NSNumber numberWithInt:5]];
      [weightArray addObject:[NSNumber numberWithInt:5]];
      break;
    case 2:
      [weightArray addObject:[NSNumber numberWithInt:5]];
      [weightArray addObject:[NSNumber numberWithInt:5]];
      [weightArray addObject:[NSNumber numberWithInt:5]];
      [weightArray addObject:[NSNumber numberWithInt:3]];
      [weightArray addObject:[NSNumber numberWithInt:3]];
      [weightArray addObject:[NSNumber numberWithInt:3]];
      break;
    case 3:
      [weightArray addObject:[NSNumber numberWithInt:5]];
      [weightArray addObject:[NSNumber numberWithInt:5]];
      [weightArray addObject:[NSNumber numberWithInt:5]];
      [weightArray addObject:[NSNumber numberWithInt:5]];
      [weightArray addObject:[NSNumber numberWithInt:3]];
      [weightArray addObject:[NSNumber numberWithInt:1]];
      break;
    case 4:
      [weightArray addObject:[NSNumber numberWithInt:5]];
      [weightArray addObject:[NSNumber numberWithInt:5]];
      [weightArray addObject:[NSNumber numberWithInt:5]];
      [weightArray addObject:[NSNumber numberWithInt:5]];
      [weightArray addObject:[NSNumber numberWithInt:5]];
      [weightArray addObject:[NSNumber numberWithInt:5]];
      break;
  }
  return weightArray;
}


@end
