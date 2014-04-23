//
//  STJMViewController.m
//  Swipes
//
//  Created by Hu Zhe on 14-4-21.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import "STJMViewController.h"

#define kMiniumGestureLength    25
#define kMaximumVariance        5

@implementation STJMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UISwipeGestureRecognizer *vertical = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(reportVerticallSwipe:)];
    vertical.direction = UISwipeGestureRecognizerDirectionUp|UISwipeGestureRecognizerDirectionDown;
    [self.view addGestureRecognizer:vertical];
    
    UISwipeGestureRecognizer *horizontal = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(reportHorizontalSwipe:)];
    
    horizontal.direction = UISwipeGestureRecognizerDirectionLeft|UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:horizontal];
}

- (void)eraseText{
    self.label.text=@"";
}

#pragma mark -
//- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
//    UITouch *touch = [touches anyObject];
//    self.gestureStartPoint = [touch locationInView:self.view];
//}
//
//- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
//    UITouch *touch = [touches anyObject];
//    CGPoint currentPoint = [touch locationInView:self.view];
//    
//    CGFloat deltaX = fabsf(self.gestureStartPoint.x - currentPoint.x);
//    CGFloat deltaY = fabsf(self.gestureStartPoint.y - currentPoint.y);
//    
//    if (deltaX >= kMiniumGestureLength && deltaY <= kMaximumVariance) {
//        self.label.text = @"Horizontal swipe detected";
//        [self performSelector:@selector(eraseText) withObject:nil afterDelay:2];
//    } else if (deltaY >= kMiniumGestureLength && deltaX <= kMaximumVariance){
//        self.label.text = @"Vertical swipe detected";
//        [self performSelector:@selector(eraseText) withObject:nil afterDelay:2];
//    }
//}

- (void)reportHorizontalSwipe:(UIGestureRecognizer *)recognizer
{
    self.label.text = @"Horizontal swipe detected";
    [self performSelector:@selector(eraseText) withObject:nil afterDelay:2];
}

- (void)reportVerticallSwipe:(UIGestureRecognizer *)recognizer
{
    self.label.text = @"Vertical swipe detected";
    [self performSelector:@selector(eraseText) withObject:nil afterDelay:2];
}

@end
