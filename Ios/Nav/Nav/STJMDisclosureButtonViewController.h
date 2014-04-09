//
//  STJMDisclosureButtonViewController.h
//  Nav
//
//  Created by Hu Zhe on 14-4-8.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import "STJMSecondLevelViewController.h"

@class STJMDisclosureDetailViewController;

@interface STJMDisclosureButtonViewController : STJMSecondLevelViewController

@property (copy, nonatomic) NSArray *movies;
@property (strong, nonatomic) STJMDisclosureDetailViewController *detailController;

@end
