//
//  STJMViewController.m
//  Button Fun
//
//  Created by Hu Zhe on 14-3-24.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import "STJMViewController.h"

@interface STJMViewController ()

@end

@implementation STJMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ButtonPressed:(UIButton *)sender {
    NSString *title = [sender titleForState:UIControlStateNormal];
    NSString *plainText = [NSString stringWithFormat:@"%@ button pressed.",title];
    
    NSMutableAttributedString *styledText = [[NSMutableAttributedString alloc] initWithString:plainText];
    
    NSDictionary *attributes =@{NSFontAttributeName:[UIFont boldSystemFontOfSize:_statusLabel.font.pointSize]};
    
    NSRange nameRange =[plainText rangeOfString:title];
    
    [styledText setAttributes:attributes range:nameRange];
    
//    _statusLabel.text = plainText;
    _statusLabel.attributedText = styledText;
}
@end
