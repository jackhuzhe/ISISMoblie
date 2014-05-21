//
//  STJMJobController.m
//  ISIS2 Mobile
//
//  Created by Hu Zhe on 14-4-23.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import "STJMJobController.h"
#import "STJMJob.h"
#import "SBJson4.h"
#import "STJMStatusPickerView.h"


@interface STJMJobController ()

@end

@implementation STJMJobController

//实现GET SET
@synthesize activityIndicatorView;

UITextField *textfield;

float height;

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
    [textfield addTarget:self action:@selector(textFieldDidBeginEditing:) forControlEvents:UIControlEventEditingDidBegin];
    [textfield addTarget:self action:@selector(textFieldDidEndEditing:) forControlEvents:UIControlEventEditingDidEnd];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardwasShown:) name:UIKeyboardDidShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardwasHidden:) name:UIKeyboardDidHideNotification object:nil];
    
    self.statusList = @[@"ALL",@"COMPLETED",@"FAILED",@"PROCESSING",@"WAITING"];
    
    //_statusField.inputView = _statusPicker;

}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
//    //do somthing
//    if (textField.tag==5)
//    {
//        
//        if (height==0) {
//            [self.statusField setInputView:self.statusPicker];
//            [UIView animateWithDuration:0.3f animations:^{
//                CGRect frame = self.view.frame;
//                
//                
//                frame.origin.y -=60;//216是iphone键盘高，ipad是352，也可以自定义上移的高度
//                
//                frame.size.height +=60;
//                
//                height = 60;
//                
//                self.view.frame = frame;
//            }];
//        }
//        
        return NO;

    }
//    
//    if (textField.tag == 4){
//        UIDatePicker *datePicker = [[UIDatePicker alloc] init];
//        
//        [datePicker setDate:[NSDate date] animated:YES];
//        
//        datePicker.datePickerMode = UIDatePickerModeDate;
//        
//        //UITextField的inputView属性代替标准的系统键盘
//        
//        textField.inputView = datePicker;//inputView相当于给弹出datePicker控件的                动画的功能;定制键盘来使用datePicker,弹出datePicker与弹出键盘方式一样
//
//    }
//
//    return YES;
//}

//- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
//    //do somthing
//    if (textField.tag==5)
//    {
//        [self.statusField setInputView:self.statusPicker];
//        [UIView animateWithDuration:0.3f animations:^{
//            CGRect frame = self.view.frame;
//            
//            
//            frame.origin.y +=60;//216是iphone键盘高，ipad是352，也可以自定义上移的高度
//            
//            frame.size.height -=60;
//            
//            height = 0;
//            
//            self.view.frame = frame;
//        }];
//        return NO;
//        
//    }
//    
//    if (textField.tag == 4){
//        UIDatePicker *datePicker = [[UIDatePicker alloc] init];
//        
//        [datePicker setDate:[NSDate date] animated:YES];
//        
//        datePicker.datePickerMode = UIDatePickerModeDate;
//        
//        //UITextField的inputView属性代替标准的系统键盘
//        
//        textField.inputView = datePicker;//inputView相当于给弹出datePicker控件的                动画的功能;定制键盘来使用datePicker,弹出datePicker与弹出键盘方式一样
//        
//    }
//    
//    return YES;
//}

-(void)textFieldDidBeginEditing:(UITextField *)textField{   //开始编辑时，整体上移
//    if (textField.tag==4) {
//        [self moveView:-20];
//    }
//    if (textField.tag==5)
//    {
//        [self moveView:-60];
//    }
}
-(void)textFieldDidEndEditing:(UITextField *)textField{     //结束编辑时，整体下移
//    if (textField.tag==4) {
//        [self moveView:20];
//    }
//    if (textField.tag==5)
//    {
//        [self moveView:60];
//    }
}
-(void)moveView:(float)move{
    NSTimeInterval animationDuration = 0.30f;
    CGRect frame = self.view.frame;
    frame.origin.x +=move;//view的X轴上移
    self.view.frame = frame;
    [UIView beginAnimations:@"ResizeView" context:nil];
    [UIView setAnimationDuration:animationDuration];
    self.view.frame = frame;
    [UIView commitAnimations];//设置调整界面的动画效果
    
    
}


-(void)keyboardwasShown:(NSNotification *) notify{
    
//    NSTimeInterval animationDuration = 0.1f;
//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration:animationDuration];
//    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    
    [UIView animateWithDuration:0.3f animations:^{
    CGRect frame = self.view.frame;
    
    
    frame.origin.y -=60;//216是iphone键盘高，ipad是352，也可以自定义上移的高度
    
    frame.size.height +=60;
    
    height = 60;
    
    self.view.frame = frame;
    }];
//    [UIView commitAnimations];
    
}

-(void) keyboardwasHidden:(NSNotification *) notify{
    if (height == 0) {
        return ;
    }else{
        NSTimeInterval animationDuration = 0.3f;
        
        [UIView beginAnimations:nil context:nil];
        
        [UIView setAnimationDuration:animationDuration];
        
        [UIView setAnimationCurve:UIViewAnimationCurveLinear];
        CGRect frame = self.view.frame;
        
        frame.origin.y +=60;
        
        frame.size.height -=60;
        
        self.view.frame = frame;
        
        [UIView commitAnimations];
        height = 0;
    }
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
    if ([activityIndicatorView isAnimating]) {
        [activityIndicatorView stopAnimating];
    }else{
        [activityIndicatorView startAnimating];
    }
    [self queryUserDataFromServer];
    [activityIndicatorView stopAnimating];
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
    if ([activityIndicatorView isAnimating]) {
        [activityIndicatorView stopAnimating];
    }else{
        [activityIndicatorView startAnimating];
    }
    NSString *msg = self.queryJobs.jobName;

    UIViewController *destination = segue.destinationViewController;
    if ([destination respondsToSelector:@selector(setData:)]) {
        [destination setValue:msg forKey:@"data"];
    }
    [activityIndicatorView stopAnimating];
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
    
    data = [@"{\"jobList\":[{\"id\":1924747188,\"status\":\"ABORTED\",\"name\":\"GHOT_D_Agent\",\"type\":\"Generate HOT\"}],\"success\":true}" dataUsingEncoding:NSUTF8StringEncoding];
    
    NSString* strRet = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    SBJson4ValueBlock block = ^(id v, BOOL *stop) {
        NSLog(@"Found: %@", @([v isKindOfClass:[NSArray class]]));
        
        NSMutableDictionary *root = v;
        
        
        //注意转换代码
        NSMutableArray * jobList = [root objectForKey:@"jobList"];
        for(NSMutableDictionary * element  in jobList)
        {
            NSLog(@"%@",[[element objectForKey:@"name"] description]);
            job.jobName = [[element objectForKey:@"name"] description];
        }
    };
    SBJson4ErrorBlock eh = ^(NSError* err) {
        NSLog(@"OOPS: %@", err);
    };
    
    id parser = [SBJson4Parser parserWithBlock:block allowMultiRoot:YES unwrapRootArray:NO errorHandler:eh];
    
    
    [parser parse:data];
    NSLog(@"%@",strRet);
    NSError * error = nil;

    
    return job;
}

-(IBAction)backgroundTap:(id)sender{
    [self.jobIdField resignFirstResponder];
    [self.jobTypeField resignFirstResponder];
    [self.bspCodeField resignFirstResponder];
    [self.dateField resignFirstResponder];
    [self.statusField resignFirstResponder];
}

-(IBAction)textViewDidBeginEditing:(id)sender{
    

    
    [UIView animateWithDuration:0.3f animations:^{
    
        CGRect curFrame=self.view.frame;
        
    
        curFrame.origin.y-=60;
    
    
        self.view.frame=curFrame;

    

    }];
}

-(IBAction)textViewDidEndEditing:(id)sender{
    
    
//    [UIView animateWithDuration:0.3f animations:^{
//        
//        CGRect curFrame=self.view.frame;
//        
//        
//        curFrame.origin.y+=60;
//        
//        
//        self.view.frame=curFrame;
//        
//        
//        
//    }];
}

-(IBAction)statusSelected:(id)sender{

    NSInteger row = [self.statusPicker selectedRowInComponent:0];
    NSString *selected = self.statusList[row];
    self.statusField.text = selected;
}

#pragma mark -
#pragma mark Picker Date Source Methods
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [self.statusList count];
}

#pragma mark Picker Delegate Methods
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{

    return self.statusList[row];
}

-(void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSString *selected = self.statusList[row];
    self.statusField.text = selected;

}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    STJMStatusPickerView *locateView = (STJMStatusPickerView *)actionSheet;
    self.statusField.text = locateView.selectedValue;
//    NSLog(@"city:%@ lat:%f lon:%f", location.city, location.latitude, location.longitude);
    //You can uses location to your application.
    if(buttonIndex == 0) {
        NSLog(@"Cancel");
    }else {
        NSLog(@"Select");
    }
}
- (IBAction)showLocateView:(id)sender {
    STJMStatusPickerView *locateView = [[STJMStatusPickerView alloc] initWithTitle:@"定位城市" delegate:self];
    [locateView showInView:self.view];
}

@end
