//
//  STJMLanguageListController.h
//  Presidents
//
//  Created by Hu Zhe on 14-4-14.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import <UIKit/UIKit.h>

@class STJMDetailViewController;

@interface STJMLanguageListController : UITableViewController


@property (weak, nonatomic) STJMDetailViewController *detailViewController;
@property (strong, nonatomic) NSArray *languageNames;
@property (strong, nonatomic) NSArray *languageCodes;

@end
