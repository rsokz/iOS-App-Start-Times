//
//  LaunchTime.h
//  bugsnag-example
//
//  Created by Rosty Sokolov on 8/25/21.
//  Copyright © 2021 Bugsnag. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface LaunchTime : NSObject

@property (readonly) CFTimeInterval processStartTimestamp;

@end
