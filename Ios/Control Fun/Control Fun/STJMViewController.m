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

- (IBAction)switchChanged:(UISwitch *)sender {
    BOOL setting = sender.isOn;
    [self.leftSwitch setOn:setting animated:YES];
    [self.rightSwitch setOn:setting animated:YES];
}

- (IBAction)toggleControls:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex==0) {
        self.leftSwitch.hidden=NO;
        self.rightSwitch.hidden=NO;
        self.doSomethingButton.hidden=YES;
    }
    else{
        self.leftSwitch.hidden=YES;
        self.rightSwitch.hidden=YES;
        self.doSomethingButton.hidden=NO;
    }
}

- (IBAction)buttonPressed:(UIButton *)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                  initWithTitle:@"Are you sure?"
                                  delegate:self
                                  cancelButtonTitle:@"No"
                                  destructiveButtonTitle:@"Yes" otherButtonTitles:nil
                                  ];
    [actionSheet showInView:self.view];
}

-(void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex{
    if (buttonIndex !=[actionSheet cancelButtonIndex]) {
        NSString *msg = nil;
        
        if (self.nameField.text.length>0) {
            msg = [NSString stringWithFormat:@"You can breathe easy, %@ ,everything went OK.",self.nameField.text];
        } else {
            msg = @"You can breathe easy, everything went OK.";        }
            UIAlertView *alert = [[UIAlertView alloc]
                                  initWithTitle:@"Something was done"
                                  message:msg
                                  delegate:self
                                  cancelButtonTitle:@"Phew!"
                                  otherButtonTitles:nil];
            [alert show];

        

    }
}



@end
