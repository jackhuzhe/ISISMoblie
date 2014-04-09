//
//  STJMDisclosureButtonViewController.m
//  Nav
//
//  Created by Hu Zhe on 14-4-8.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import "STJMDisclosureButtonViewController.h"

#import "STJMDisclosureDetailViewController.h"

//@interface STJMDisclosureButtonViewController ()
//
//@end

static NSString *CellIdentifier = @"Cell";

@implementation STJMDisclosureButtonViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Disclosure Buttons";
        //TODO set row image here
        self.movies = @[@"Toy Story", @"Cars", @"Brave"];
        self.detailController = [[STJMDisclosureDetailViewController alloc] init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CellIdentifier];
}

//- (void)didReceiveMemoryWarning
//{
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - Table View Data Source Methods

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.movies count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    cell.textLabel.text = self.movies[indexPath.row];
    
    return  cell;
}

#pragma mark - Table View Delegate Methods

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Hey, do you see the disclosure button?"
                          message:@"Touch that to drill down instead."
                          delegate:nil
                          cancelButtonTitle:@"Won't happen again"
                          otherButtonTitles:nil];
    [alert show];
}

-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    self.detailController.title = @"Disclosure Button Pressed";
    NSString *selectedMovie = self.movies[indexPath.row];
    NSString *detailMessage = [[NSString alloc]
                               initWithFormat:@"This is details for %@.", selectedMovie];
    self.detailController.message = detailMessage;
    self.detailController.title = selectedMovie;
    [self.navigationController pushViewController:self.detailController animated:YES];
}

@end
