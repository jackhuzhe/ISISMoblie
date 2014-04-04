//
//  STJMViewController.m
//  Cells
//
//  Created by Hu Zhe on 14-4-2.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import "STJMViewController.h"
#import "STJMNameAndColorCell.h"



@implementation STJMViewController

static NSString *CellTableIdentifier = @"CellTableIdentifier";



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.computers = @[
                       @{@"Name": @"Macbook",@"Color":@"White"},
                       @{@"Name": @"Macbook Pro",@"Color":@"Silver"},
                       @{@"Name": @"iMac",@"Color":@"Silver"},
                       @{@"Name": @"Mac Mini",@"Color":@"Silver"},
                       @{@"Name": @"Mac Pro",@"Color":@"Silver"}];
    
    
    UITableView *tableView =(id)[self.view viewWithTag:1];
    
    tableView.rowHeight = 65;
    UINib *nib =[UINib nibWithNibName:@"STJMNameAndColorCell" bundle:nil];
    [tableView registerNib:nib forCellReuseIdentifier:CellTableIdentifier];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark -
#pragma mark Table Data Source Methods
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.computers count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    STJMNameAndColorCell *cell = [tableView dequeueReusableCellWithIdentifier:CellTableIdentifier];
    NSDictionary *rowData = self.computers[indexPath.row];
    
    cell.nameValue.text = rowData[@"Name"];
    cell.colorValue.text = rowData[@"Color"];
    
    return cell;
}


@end
