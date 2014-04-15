//
//  STJMFlipsideViewController.m
//  AppSetting
//
//  Created by Hu Zhe on 14-4-15.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import "STJMFlipsideViewController.h"

@interface STJMFlipsideViewController ()

@end

@implementation STJMFlipsideViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (IBAction)done:(id)sender
{
    [self.delegate flipsideViewControllerDidFinish:self];
}

@end
