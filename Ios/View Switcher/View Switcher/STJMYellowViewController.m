//
//  STJMYellowViewController.m
//  View Switcher
//
//  Created by Hu Zhe on 14-3-26.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import "STJMYellowViewController.h"

@interface STJMYellowViewController ()

@end

@implementation STJMYellowViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)yellowButtonPressed{
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Yellow View Button Pressed" message:@"You pressed the button on the yellow view" delegate:nil cancelButtonTitle:@"Yep, I did." otherButtonTitles:nil];
    [alert show];
}

@end
