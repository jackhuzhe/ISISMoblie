//
//  STJMDetailViewController.h
//  Presidents
//
//  Created by Hu Zhe on 14-4-11.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STJMDetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
