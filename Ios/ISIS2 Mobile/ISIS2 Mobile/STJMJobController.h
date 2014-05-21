//
//  STJMJobController.h
//  ISIS2 Mobile
//
//  Created by Hu Zhe on 14-4-23.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STJMJobController : UIViewController{
    
    IBOutlet UIActivityIndicatorView *activityIndicatorView;
    
}

//Search Area
@property (strong, nonatomic) IBOutlet UITextField *jobIdField;
@property (strong, nonatomic) IBOutlet UITextField *jobTypeField;
@property (strong, nonatomic) IBOutlet UITextField *bspCodeField;
@property (strong, nonatomic) IBOutlet UITextField *dateField;
@property (strong, nonatomic) IBOutlet UITextField *statusField;

@property (weak, nonatomic) IBOutlet UILabel *bspCodeLabel;

@property(nonatomic,retain)UIActivityIndicatorView * activityIndicatorView;  

-(IBAction)buttonPressed:(UIButton *)sender;

-(IBAction)backgroundTap:(id)sender;
-(IBAction)textViewDidBeginEditing:(id)sender;
-(IBAction)textViewDidEndEditing:(id)sender;


@property (strong, nonatomic) IBOutlet UIPickerView *statusPicker;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;

@property (strong, nonatomic) NSArray *statusList;

-(IBAction)statusSelected:(id)sender;

- (IBAction)showLocateView:(id)sender;

@end
