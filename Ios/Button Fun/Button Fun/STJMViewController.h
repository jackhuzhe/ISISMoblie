//
//  STJMViewController.h
//  Button Fun
//
//  Created by Hu Zhe on 14-3-24.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STJMViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
- (IBAction)ButtonPressed:(UIButton *)sender;

@end
