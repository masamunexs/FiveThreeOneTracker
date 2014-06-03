//
//  ViewController.m
//  FiveThreeOneTracker
//
//  Created by Dan Nguyen on 4/13/14.
//  Copyright (c) 2014 Dan Nguyen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (void)swipeLeftRecognized;
- (void)swipeRightRecognized;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  
  UISwipeGestureRecognizer *swipeLeftRecognizer = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeLeftRecognized)];
  [swipeLeftRecognizer setDirection:UISwipeGestureRecognizerDirectionLeft];
  [self.view addGestureRecognizer:swipeLeftRecognizer];

  UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
  UIStoryboard *initialConfigurationStoryboard = [UIStoryboard storyboardWithName:@"InitialConfiguration" bundle:Nil];
  UIViewController *vc = [initialConfigurationStoryboard instantiateViewControllerWithIdentifier:@"benchPressWeight"];
  UISwipeGestureRecognizer *swipeRightRecognizer = [[UISwipeGestureRecognizer alloc]initWithTarget:vc.view action:@selector(swipeRightRecognized)];
  [swipeRightRecognizer setDirection:UISwipeGestureRecognizerDirectionRight];

  [vc.view addGestureRecognizer:swipeRightRecognizer];
  
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)swipeLeftRecognized
{
  UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
  UIStoryboard *initialConfigurationStoryboard = [UIStoryboard storyboardWithName:@"InitialConfiguration" bundle:Nil];
  UIViewController *vc = [initialConfigurationStoryboard instantiateViewControllerWithIdentifier:@"benchPressWeight"];

  CATransition* transition = [CATransition animation];
  transition.duration = 0.25;
  transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  transition.type = kCATransitionMoveIn; //kCATransitionMoveIn; //, kCATransitionPush, kCATransitionReveal, kCATransitionFade
  transition.subtype = kCATransitionFromRight;
  
  [vc.view.layer addAnimation:transition forKey:kCATransition];
  [self presentViewController:vc animated:NO completion:nil];

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