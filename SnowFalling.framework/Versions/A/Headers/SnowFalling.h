//
//  SnowFalling.h
//  Snow Falling Effect iPhone/iPad SDK.
//  Version: 1.4
//
//  Copyright 2012, Centro Studi Informatica di Danilo Priore. All rights reserved.
//  Internet: http://www.prioregroup.com
//  Email support: support@prioregroup.com

#ifndef SNOWFALLING_H
#define SNOWFALLING_H

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

typedef enum {
    SnowFlakeDirectionLeft = -1,
    SnowFlakeDirectionVertical,
    SnowFlakeDirectionRight,
    SnowFlakeDirectionBoth
} SnowFlakeDirections;

@interface SnowFalling : NSObject

@property (nonatomic, assign) BOOL hidden;
@property (nonatomic, assign) NSInteger numbersOfFlake;
@property (nonatomic, assign) CGFloat minScaleSize;
@property (nonatomic, assign) CGFloat maxScaleSize;
@property (nonatomic, assign) SnowFlakeDirections directionsOfFlake;
@property (nonatomic, retain) UIImage *imageOfFlake;

- (id)initWithView:(UIView*)owner;
- (id)initWithView:(UIView *)owner autoStartEnd:(BOOL)autoStartEnd;
- (id)initWithView:(UIView *)owner startDate:(NSDate*)startDate endDate:(NSDate*)endDate;

- (void)startAnimating;
- (void)stopAnimating;

@end

#endif
