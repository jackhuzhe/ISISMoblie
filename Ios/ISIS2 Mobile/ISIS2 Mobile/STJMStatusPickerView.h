//
//  STJMStatusPickerView.h
//  ISIS2 Mobile
//
//  Created by Hu Zhe on 14-5-20.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STJMStatusPickerView : UIActionSheet<UIActionSheetDelegate>

@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UIPickerView *statusPicker;

@property (strong, nonatomic) NSArray *statusList;

- (id)initWithTitle:(NSString *)title delegate:(id /*<UIActionSheetDelegate>*/)delegate;

- (void)showInView:(UIView *)view;

- (IBAction)cancel:(id)sender;
- (IBAction)locate:(id)sender;

@property (strong, nonatomic) NSString *selectedValue;

@end
