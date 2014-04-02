//
//  STJMSingleComponentPickerViewController.h
//  Pickers
//
//  Created by Hu Zhe on 14-3-27.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STJMSingleComponentPickerViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>

@property (strong, nonatomic) IBOutlet UIPickerView *singlePicker;
@property (strong, nonatomic) NSArray *characterNames;

-(IBAction)buttonPressed;

@end
