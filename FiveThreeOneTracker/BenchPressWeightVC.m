//
//  BenchPressWeightVC.m
//  FiveThreeOneTracker
//
//  Created by Dan Nguyen on 5/6/14.
//  Copyright (c) 2014 Dan Nguyen. All rights reserved.
//

#import "BenchPressWeightVC.h"

@implementation BenchPressWeightVC

- (void)viewDidLoad
{
  [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  
  UISwipeGestureRecognizer *swipeRightRecognizer = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeRightRecognized)];
  [swipeRightRecognizer setDirection:UISwipeGestureRecognizerDirectionRight];
  
  [self.view addGestureRecognizer:swipeRightRecognizer];
}



- (void)swipeRightRecognized
{
  UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
  UIViewController *vc = [mainStoryboard instantiateViewControllerWithIdentifier:@"Main"];
  
  CATransition* transition = [CATransition animation];
  transition.duration = 0.25;
  transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  transition.type = kCATransitionMoveIn; //kCATransitionMoveIn; //, kCATransitionPush, kCATransitionReveal, kCATransitionFade
  transition.subtype = kCATransitionFromLeft;
  
  [vc.view.layer addAnimation:transition forKey:kCATransition];
  [self presentViewController:vc animated:NO completion:nil];
  
}
@end
