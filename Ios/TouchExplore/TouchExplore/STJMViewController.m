//
//  STJMViewController.m
//  TouchExplore
//
//  Created by Hu Zhe on 14-4-18.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import "STJMViewController.h"



@implementation STJMViewController

-(void)updateLabelsFromTouches:(NSSet *)touches{
    NSUInteger numTaps = [[touches anyObject] tapCount];
    NSString *tapsMessage = [[NSString alloc] initWithFormat:@"%d taps detected",numTaps];
    self.tapsLabel.text = tapsMessage;
    
    NSUInteger numTouches = [touches count];
    NSString *touchMsg = [[NSString alloc] initWithFormat:@"%d touches detected",numTouches];
    self.touchesLabel.text = touchMsg;
}

#pragma mark - Touch Event Methods
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    self.messageLabel.text=@"Touches Began";
    [self updateLabelsFromTouches:touches];
}

-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    self.messageLabel.text=@"Touches Cancelled";
    [self updateLabelsFromTouches:touches];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    self.messageLabel.text=@"Touches Ended.";
    [self updateLabelsFromTouches:touches];
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    self.messageLabel.text=@"Drag Detected";
    [self updateLabelsFromTouches:touches];
}

#

@end
