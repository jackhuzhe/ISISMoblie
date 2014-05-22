//
//  STJMJobListController.m
//  ISIS2 Mobile
//
//  Created by Hu Zhe on 14-5-9.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import "STJMJobListController.h"
#import "STJMJob.h"

@interface STJMJobListController ()

@end

@implementation STJMJobListController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    STJMJob *job1 = [STJMJob new];
    job1.jobName = @"G_HOT";
    job1.jobType = @"HOT";
    
    STJMJob *job2 = [STJMJob new];
    job2.jobName = @"Net Fare Process";
    job2.jobType = @"Net Fare Process";
    
    self.jobs = @[job1, job2];
    
    [self addRefreshViewController];
}

-(void)addRefreshViewController{
    self.refreshControl = [[UIRefreshControl alloc] init];
    //self.refreshControl.attributedTitle = [[NSAttributedString alloc] initWithString:@"下拉刷新"];
    [self.refreshControl addTarget:self action:@selector(RefreshViewControlEventValueChanged) forControlEvents:UIControlEventValueChanged];
}

-(void)RefreshViewControlEventValueChanged{

    //    self.refreshControl.attributedTitle = [[NSAttributedString alloc] initWithString:@"下拉刷新"];
    [self.refreshControl beginRefreshing];
    //    self.refreshControl.attributedTitle = [[NSAttributedString alloc] initWithString:@"刷新中..."];
    
    [self performSelector:@selector(handleData) withObject:nil afterDelay:2.0f];
}

- (void) handleData
{
    NSLog(@"refreshed");
    //    [self.tableView setContentOffset:CGPointMake(0, -self.refreshControl.frame.size.height) animated:YES];
    [self.refreshControl endRefreshing];
    self.refreshControl.attributedTitle = [[NSAttributedString alloc]initWithString:@"下拉刷新"];
    
    [self.tableView reloadData];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.jobs count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSString *identifier  = @"completedItemCell";
    STJMJob *job = [self.jobs objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    // Configure the cell...
    
    NSMutableAttributedString *jobName = [[NSMutableAttributedString alloc] initWithString:job.jobName];
    NSMutableAttributedString *jobType = [[NSMutableAttributedString alloc] initWithString:job.jobType];
    
    NSDictionary *textAttributes = @{NSFontAttributeName: [UIFont fontWithName:@"Courier" size:24], NSStrokeColorAttributeName:@3.0};
    
    UILabel *cellJobNameLabel = (UILabel *)[cell viewWithTag:1];
    cellJobNameLabel.attributedText = jobName;
    
    UILabel *cellJobTypeLabel = (UILabel *)[cell viewWithTag:2];
    cellJobTypeLabel.attributedText = jobType;
    
    return cell;
}


/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
