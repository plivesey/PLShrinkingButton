//
//  PLViewController.m
//  PLShrinkingButton
//
//  Created by Peter Livesey on 6/30/13.
//  Copyright (c) 2013 Peter Livesey. All rights reserved.
//

#import "PLViewController.h"
#import "PLShrinkingButton.h"


@interface PLViewController ()

@end

@implementation PLViewController

- (void)viewDidLoad
{
   [super viewDidLoad];
	
   PLShrinkingButton *button = [PLShrinkingButton shrinkingButton];
   button.backgroundColor = [UIColor redColor];
   [button setTitle:@"Test" forState:UIControlStateNormal];
   button.frame = CGRectMake(60, 100, 200, 60);
   button.cornerRadius = 3;
   [self.view addSubview:button];
}

@end
