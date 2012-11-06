//
//  SnowFalling.h
//  Snow Falling Effect iPhone SDK.
//  Version: 1.0
//
//  Copyright 2011, Centro Studi Informatica di Danilo Priore. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SnowFalling : NSObject


@property (nonatomic, assign, setter = setHidden:) BOOL hidden;

- (id)initWithView:(UIView*)owner;
- (id)initWithView:(UIView *)owner autoStartEnd:(BOOL)autoStartEnd;
- (id)initWithView:(UIView *)owner startDate:(NSDate*)startDate endDate:(NSDate*)endDate;

@end
