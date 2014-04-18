//
//  STJMFlipsideViewController.h
//  AppSettings
//
//  Created by Hu Zhe on 14-4-16.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import <UIKit/UIKit.h>

@class STJMFlipsideViewController;

@protocol STJMFlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(STJMFlipsideViewController *)controller;
@end

@interface STJMFlipsideViewController : UIViewController

@property (weak, nonatomic) id <STJMFlipsideViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UISwitch *engineSwitch;
@property (weak, nonatomic) IBOutlet UISlider *warpFactorSlider;

- (void)refreshFields;
- (IBAction)engineSwitchTapped;
- (IBAction)warpSliderTouched;


- (IBAction)done:(id)sender;

@end
