//
//  STJMJob.h
//  ISIS2 Mobile
//
//  Created by Hu Zhe on 14-5-6.
//  Copyright (c) 2014年 Hu Zhe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface STJMJob : NSObject

@property (assign, nonatomic) NSInteger jobId;
@property (copy, nonatomic) NSString *jobType;
@property (copy, nonatomic) NSString *bspCode;
@property (copy, nonatomic) NSString *dataScope;
@property (copy, nonatomic) NSString *jobName;
@property (copy, nonatomic) NSString *status;
@property (copy, nonatomic) NSString *actualStartTime;
@property (copy, nonatomic) NSString *endTime;
@end
