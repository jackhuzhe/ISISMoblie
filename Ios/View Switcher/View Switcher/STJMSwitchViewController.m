//
//  STJMSwitchViewController.m
//  View Switcher
//
//  Created by Hu Zhe on 14-3-26.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import "STJMSwitchViewController.h"
#import "STJMYellowViewController.h"
#import "STJMBlueViewController.h"

@interface STJMSwitchViewController ()

@end

@implementation STJMSwitchViewController

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
    self.blueViewController = [[STJMBlueViewController alloc]
                               initWithNibName:@"BlueView" bundle:nil];
    [self.view insertSubview:self.blueViewController.view atIndex:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    if (self.blueViewController.view.superview == nil) {
        self.blueViewController = nil;
    } else {
        self.yellowViewController = nil;
    }
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

-(IBAction)switchViews:(id)sender{

    if (self.yellowViewController.view.superview == nil) {
        if (self.yellowViewController ==nil) {
            self.yellowViewController = [[STJMYellowViewController alloc]
                                         initWithNibName:@"YellowView" bundle:nil];
        }
        [self.blueViewController.view removeFromSuperview];
        [self.view insertSubview:self.yellowViewController.view atIndex:0];
    } else {
        if (self.blueViewController ==nil) {
            self.blueViewController = [[STJMBlueViewController alloc]
                                         initWithNibName:@"BlueView" bundle:nil];
        }
        [self.yellowViewController.view removeFromSuperview];
        [self.view insertSubview:self.blueViewController.view atIndex:0];
    }
}

@end
