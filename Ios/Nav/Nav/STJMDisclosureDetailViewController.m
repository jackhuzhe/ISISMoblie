//
//  STJMDisclosureDetailViewController.m
//  Nav
//
//  Created by Hu Zhe on 14-4-8.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import "STJMDisclosureDetailViewController.h"

@interface STJMDisclosureDetailViewController ()

@end

@implementation STJMDisclosureDetailViewController


- (UILabel *)label;
{
    return (id)self.view;
}

- (void)loadView;
{
    UILabel *label = [[UILabel alloc] init];
    label.numberOfLines = 0;
    label.textAlignment = NSTextAlignmentCenter;
    self.view = label;
}

- (void)viewWillAppear:(BOOL)animated;
{
    [super viewWillAppear:animated];
    self.label.text = self.message;
}

//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}
//
//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//    // Do any additional setup after loading the view from its nib.
//}
//
//- (void)didReceiveMemoryWarning
//{
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

@end
