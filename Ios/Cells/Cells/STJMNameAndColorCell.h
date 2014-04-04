//
//  STJMNameAndColorCell.h
//  Cells
//
//  Created by Hu Zhe on 14-4-2.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STJMNameAndColorCell : UITableViewCell

@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *color;

@property (strong, nonatomic) IBOutlet UILabel *nameValue;
@property (strong, nonatomic) IBOutlet UILabel *colorValue;

@end
