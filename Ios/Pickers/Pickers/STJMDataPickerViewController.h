//
//  STJMDataPickerViewController.h
//  Pickers
//
//  Created by Hu Zhe on 14-3-27.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STJMDataPickerViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;
-(IBAction)buttonPressed;
@end
