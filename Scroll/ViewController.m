//
//  ViewController.m
//  Scroll
//
//  Created by Armin Kroll on 15/07/2015.
//  Copyright (c) 2015 jtribe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constrainViewTwoHeight;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}

- (void) viewWillAppear:(BOOL)animated
{
  [super viewWillAppear:animated];
  self.constrainViewTwoHeight.constant = 0;
  
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)viewOneTapped:(id)sender
{
  CGFloat height = 0;
  if (self.constrainViewTwoHeight.constant == 0)
  {
    height = 100;
  }
  self.constrainViewTwoHeight.constant = height;
  
  [UIView animateWithDuration:1.0 delay:0 usingSpringWithDamping:0.9 initialSpringVelocity:15 options:(UIViewAnimationOptionTransitionNone) animations:^{
    [self.view layoutIfNeeded];
  } completion:nil];
  
  

}
@end
