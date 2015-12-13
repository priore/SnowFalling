**SnowFalling**
================

* NOW IS FREE WITH SOURCE CODE !!!

A nice iOS framework to able you to create iPhone and iPad Apps with snow falling effects on a UIViewController, with rotation of flakes, from left and right directions, and flakes with big, medium and tiny size's.

With this Framework you can create iPhone and iPad Apps with snow falling effects on UIViewController, with rotation of flakes, left and right direction and flakes that vary in size (big, medium and small).

## Requirements for [iOS](http://www.wikipedia.org/wiki/IOS)
* [iOS](http://www.wikipedia.org/wiki/IOS) 5.1.1, and later
* [XCode](http://www.wikipedia.org/wiki/Xcode) 5.0 or later
* Foundation.framework
* UIKit.framework
* QuartzCore.framework

Below a simple example on Objective-C :

```objective-c
// always visible
SnowFalling *snowFalling = [[[SnowFalling alloc] initWithView:self.view] autorelease];
snowFalling.numbersOfFlake = 20;
snowFalling.hidden = NO;

// visible only from dec 1 to jan 5
SnowFalling *snowFalling = [[[SnowFalling alloc] initWithView:self.view autoStartEnd:YES];

// only from the dates specified
NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
[dateFormat setDateFormat:@"yyyy-MM-dd"];
NSDate *date1 = [dateFormat dateFromString:@"2015-12-22"];
NSDate *date2 = [dateFormat dateFromString:@"2016-01-05"];
SnowFalling *snowFalling = [[[SnowFalling alloc] initWithView:self.view startDate:date1 endDate:date2];
```

[![YOUTUBE VIDEO](https://github.com/priore/SnowFalling-Demo/raw/master/snowfalling.jpg)](https://www.youtube.com/watch?v=zhx9-5847tM "YOUTUBE VIDEO")

##Contacts

[![TWITTER](/images/twitter.png)](https://twitter.com/DaniloPriore)      [![FACEBOOK](/images/facebook.png)](https://www.facebook.com/prioregroup)      [![LINKED-IN](/images/linked-in.png)](http://it.linkedin.com/in/priore/)
