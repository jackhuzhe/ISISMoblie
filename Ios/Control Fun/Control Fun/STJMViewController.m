//
//  STJMViewController.m
//  Control Fun
//
//  Created by Hu Zhe on 14-3-25.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import "STJMViewController.h"

@interface STJMViewController ()

@end

@implementation STJMViewController

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

- (IBAction)textFieldDoneEditing:(id)sender{
    [sender resignFirstResponder];
}

- (IBAction)backgroundTap:(id)sender{
    [self.nameField resignFirstResponder];
    [self.numberField resignFirstResponder];
}

@end
