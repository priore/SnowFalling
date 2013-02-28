**SnowFalling-Demo**
================

A nice iOS framework to able you to create iPhone and iPad Apps with snow falling effects on a UIViewController, with rotation of flakes, from left and right directions, and flakes with big, medium and tiny size's.

With this Framework you can create iPhone and iPad Apps with snow falling effects on UIViewController, with rotation of flakes, left and right direction and flakes that vary in size (big, medium and small).

## Requirements
* iOS 3.1, 3.2, 4.x, 5.x and last iOS6.
* XCode 4.1 or later
* Foundation.framework
* UIKit.framework
* QuartzCore.framework

Below a simple example on Objective-C :

// always visible

SnowFalling *snowFalling = [[[SnowFalling alloc] initWithView:self.view] autorelease];

snowFalling.numbersOfFlake = 20;

snowFalling.hidden = NO;


// visible only from dec 1 to jan 5

SnowFalling *snowFalling = [[[SnowFalling alloc] initWithView:self.view autoStartEnd:YES];


// only from the dates specified

NSDate *date1 = ...

NSDate *date2 = ...

SnowFalling *snowFalling = [[[SnowFalling alloc] initWithView:self.view startDate:date1 endDate:date2];


**[GET IT NOW!](http://www.prioregroup.com/iphone/snowfalling.aspx)**

sample screen-shot :

![Screenshot](https://github.com/priore/SnowFalling-Demo/raw/master/snowfalling.jpg)

[Prioregroup.com Home Page](http://www.prioregroup.com)