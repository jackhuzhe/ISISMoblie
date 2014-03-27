//
//  STJMSwitchViewController.h
//  View Switcher
//
//  Created by Hu Zhe on 14-3-26.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import <UIKit/UIKit.h>

@class STJMBlueViewController;
@class STJMYellowViewController;

@interface STJMSwitchViewController : UIViewController

@property (strong, nonatomic) STJMYellowViewController *yellowViewController;
@property (strong, nonatomic) STJMBlueViewController *blueViewController;

- (IBAction)switchViews:(id)sender;

@end
