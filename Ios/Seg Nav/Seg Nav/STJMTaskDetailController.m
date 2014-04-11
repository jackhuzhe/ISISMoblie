//
//  STJMTaskDetailController.m
//  Seg Nav
//
//  Created by Hu Zhe on 14-4-10.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import "STJMTaskDetailController.h"

@interface STJMTaskDetailController ()

@end

@implementation STJMTaskDetailController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.textView.text = self.selection[@"object"];
    [self.textView becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    if ([self.delegate respondsToSelector:@selector(setEditedSelection:)]) {
        [self.textView endEditing:YES];
        
        NSIndexPath *indexPath = self.selection[@"indexPath"];
        id object = self.textView.text;
        NSDictionary *editedSelection = @{@"indexPath":indexPath,@"object":object};
        [self.delegate setValue:editedSelection forKey:@"editedSelection"];
    }
}

@end
