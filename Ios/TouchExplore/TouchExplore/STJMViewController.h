//
//  STJMViewController.h
//  TouchExplore
//
//  Created by Hu Zhe on 14-4-18.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STJMViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property (weak, nonatomic) IBOutlet UILabel *tapsLabel;
@property (weak, nonatomic) IBOutlet UILabel *touchesLabel;

-(void)updateLabelsFromTouches:(NSSet *)touches;
@end
