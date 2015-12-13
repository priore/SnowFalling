//
//  SnowFalling.h
//  Snow Falling Effect iPhone/iPad.
//  Version: 1.4.3
//
//  Copyright 2012, Danilo Priore. All rights reserved.
//  Internet: http://www.prioregroup.com
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, free distribute, but not to resell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

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
@property (nonatomic, strong) UIImage *imageOfFlake;

- (id)initWithView:(UIView*)owner;
- (id)initWithView:(UIView*)owner autoStartEnd:(BOOL)autoStartEnd;
- (id)initWithView:(UIView*)owner startDate:(NSDate*)startDate endDate:(NSDate*)endDate;

- (void)startAnimating;
- (void)stopAnimating;

@end

#endif
