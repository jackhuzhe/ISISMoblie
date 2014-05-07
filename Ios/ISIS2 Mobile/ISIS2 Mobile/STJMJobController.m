//
//  STJMJobController.m
//  ISIS2 Mobile
//
//  Created by Hu Zhe on 14-4-23.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import "STJMJobController.h"
#import "STJMJob.h"
#import "SBJson.h"


@interface STJMJobController ()

@end

@implementation STJMJobController

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

-(IBAction)buttonPressed:(UIButton *)sender
{

    [self queryUserDataFromServer];
}

-(void) queryUserDataFromServer
{

    
    NSString *url = @"http://10.1.39.84:8080/seurat-web/jersey/bsp/CN";
    
    NSMutableURLRequest *request = [NSMutableURLRequest new];
    [request setURL:[NSURL URLWithString:url]];
    [request setHTTPMethod:@"GET"];

    
    NSHTTPURLResponse* response;
    NSData* data = [NSURLConnection sendSynchronousRequest:request
                                         returningResponse:&response error:nil];
    
    NSString* strRet = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    NSLog(@"dic=%@",dic);
    
    ///将foundation对象转换成json数据  判断这个对象是否能转换成json数据
    if ([NSJSONSerialization isValidJSONObject:dic]) {
        NSError *error;
        NSData *jsondata = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:&error];
        NSString *str = [[NSString alloc]initWithData:jsondata encoding:NSUTF8StringEncoding];
        NSLog(@"jsondata=%@",str);
        self.bspCodeLabel.text = [[dic objectForKey:@"bsp"] objectForKey:@"name"];

    } else{
        self.bspCodeLabel.text = strRet;
        NSLog(strRet);
    
    }
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    NSString *msg = self.queryJobs.jobName;
    UIViewController *destination = segue.destinationViewController;
    if ([destination respondsToSelector:@selector(setData:)]) {
        [destination setValue:msg forKey:@"data"];
    }
}

- (STJMJob *)queryJobs{
    NSString *url = @"http://10.1.39.84:8080/seurat-web/jersey/job/list?id=&bspCode=HK&status=ABORTED";
    STJMJob *job = [STJMJob new];
    
    NSMutableURLRequest *request = [NSMutableURLRequest new];
    [request setURL:[NSURL URLWithString:url]];
    [request setHTTPMethod:@"GET"];
    
    
    NSHTTPURLResponse* response;
    NSData* data = [NSURLConnection sendSynchronousRequest:request
                                         returningResponse:&response error:nil];
    
    NSString* strRet = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    SBJsonParser * parser = [[SBJsonParser alloc] init];
    NSLog(@"%@",strRet);
    NSError * error = nil;
    
    NSMutableDictionary *root = [[NSMutableDictionary alloc] initWithDictionary:[parser objectWithString:strRet error:&error]];

    
    //注意转换代码
    NSMutableArray * jobList = [root objectForKey:@"jobList"];
    for(NSMutableDictionary * element  in jobList)
    {
        NSLog(@"%@",[[element objectForKey:@"name"] description]);
    }
    
    return job;
}

@end
