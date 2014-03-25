//
//  STJMViewController.h
//  Control Fun
//
//  Created by Hu Zhe on 14-3-25.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STJMViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *numberField;
@property (weak, nonatomic) IBOutlet UITextField *nameField;

- (IBAction)textFieldDoneEditing:(id)sender;
- (IBAction)backgroundTap:(id)sender;

@end
