//
//  SnowFalling.m
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

#define ARC4RANDOM_MAX	0x100000000;

// defaulf flake image (base64)
#define SNOW_PNG		@"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"

#define KEY_ANIMATION	@"360"
#define ROTATION_TYPE	@"rotation"
#define FLAKE_IMAGE		@"flake"
#define FLAKE_SIZE		@"size"
#define FLAKE_STATUS	@"status"
#define LEFT_ROTATION	(1)
#define RIGHT_ROTATION	(2)

#import <QuartzCore/QuartzCore.h>
#import "SnowFalling.h"

@interface SnowFalling() {

	@private
	BOOL pause;
	BOOL hidden;
	BOOL snowHidden;
	NSInteger numbersOfFlake;
    SnowFlakeDirections directionsOfFlake;

	UIImage *imageOfFlake;
	UIView *ownerView;
	NSMutableArray *timerArray;
	NSMutableArray *snowArray;
	
}

- (void)startSnowFlakes;
- (void)createSnowFlakes;
- (void)restoreFlakeRotation;
- (void)moveSnowFlake:(int)idx;
- (UIImage *)getImageFromBase64:(NSString *)base64String;
- (NSDate*)setDateFromYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day;
- (BOOL)isBetweenDate:(NSDate*)currentDate beginDate:(NSDate*)beginDate andDate:(NSDate*)endDate;
- (void)removeAllFlakesWithAnimation:(BOOL)animated;

@end

@interface DispatchTimeObject : NSObject

@property (nonatomic, strong) dispatch_source_t source;

- (instancetype)initWithSource:(dispatch_source_t)source;

@end

@implementation SnowFalling

@synthesize hidden, numbersOfFlake, imageOfFlake, directionsOfFlake;
@synthesize minScaleSize, maxScaleSize;

#pragma mark - Public Methods

- (id)initWithView:(UIView*)owner {
	
	if ( self = [super init] ) {
		
        minScaleSize = 0.2;
        maxScaleSize = 1.0;
		numbersOfFlake = 20;
        directionsOfFlake = SnowFlakeDirectionBoth;
		imageOfFlake = [self getImageFromBase64:SNOW_PNG];

        snowHidden = NO;
		ownerView = owner;

		[self createSnowFlakes];
		[self startSnowFlakes];
	}	
	
	return self;
}

- (id)initWithView:(UIView *)owner autoStartEnd:(BOOL)autoStartEnd {
	
	if ( self = [super init] ) {
		
        minScaleSize = 0.2;
        maxScaleSize = 1.0;
		numbersOfFlake = 20;
        directionsOfFlake = SnowFlakeDirectionBoth;
		imageOfFlake = [self getImageFromBase64:SNOW_PNG];
		
		// current year
		NSDate *date = [NSDate date];
		NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
		NSDateComponents *components = [gregorian components:NSCalendarUnitYear fromDate:date];
		NSInteger year = [components year];
		
		// check date (01/12 - 03/01)
		NSDate *startDate = [self setDateFromYear:year month:12 day:1];
		NSDate *endDate = [self setDateFromYear:(year + 1) month:1 day:5];
		snowHidden = ![self isBetweenDate:date beginDate:startDate andDate:endDate];
		
		// if it is the Christmas season initializes and starts the animation
		if (!autoStartEnd || (autoStartEnd && !snowHidden)) {
			ownerView = owner;
			[self createSnowFlakes];
			[self startSnowFlakes];
		}
	}
	
	return self;
}

- (id)initWithView:(UIView *)owner startDate:(NSDate*)startDate endDate:(NSDate*)endDate {
	
	if ( self = [super init] ) {
		
        minScaleSize = 0.2;
        maxScaleSize = 1.0;
		numbersOfFlake = 20;
        directionsOfFlake = SnowFlakeDirectionBoth;
		imageOfFlake = [self getImageFromBase64:SNOW_PNG];
		
		// check date
		snowHidden = ![self isBetweenDate:[NSDate date] beginDate:startDate andDate:endDate];
		
		// if it is the Christmas season initializes and starts the animation
		if (!snowHidden) {
			ownerView = owner;
			[self createSnowFlakes];
			[self startSnowFlakes];
		}
	}
	
	return self;

}

- (void)stopAnimating {
	pause = YES;
    
    if (timerArray) {
        for (int i = 0; i < [timerArray count]; i++) {
            dispatch_source_t _timer = [[timerArray objectAtIndex:i] source];
            dispatch_source_cancel(_timer);
            _timer = nil;
        }
        
        timerArray = nil;
    }
    
    [self removeAllFlakesWithAnimation:YES];

}

- (void)startAnimating {
	pause = NO;
    
    [self createSnowFlakes];
    [self startSnowFlakes];
}

#pragma mark - Properties

-(void)setHidden:(BOOL)value {
    
    @synchronized(self) {
        if (snowHidden) return;
        for (NSDictionary *flake in snowArray) {
            UIImageView *snow = [flake objectForKey:FLAKE_IMAGE];
            [snow setHidden:value];
        }
    }
}

- (void)setNumbersOfFlake:(NSInteger)value {
    
    @synchronized(self) {
        // new qty flakes
        numbersOfFlake = value;
        
        // remove and recreate the flakes
        [self removeAllFlakesWithAnimation:NO];
        [self createSnowFlakes];
    }
}

-(void)setImageOfFlake:(UIImage *)value {
	
    @synchronized(self) {
        // new image of flakes
        imageOfFlake = value;
        
        // remove and recreate the flakes
        [self removeAllFlakesWithAnimation:NO];
        [self createSnowFlakes];
    }
}

- (void)setDirectionsOfFlake:(SnowFlakeDirections)value {
    
    @synchronized(self) {
        // new direction of the flakes
        directionsOfFlake = value;
        
        // remove and recreate the flakes
        [self removeAllFlakesWithAnimation:NO];
        [self createSnowFlakes];
    }
}

#pragma mark - Private Flakes Methods

- (void)startSnowFlakes {
	
	if (timerArray == nil || (timerArray && [timerArray count] == 0)) {
        
        if (timerArray == nil) {
            timerArray = [[NSMutableArray alloc] init];
        } else {
            [timerArray removeAllObjects];
        }
        
        for (int i = 1; i < 4 ; i++) {
            dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, dispatch_get_main_queue());
            dispatch_source_set_timer(_timer, DISPATCH_TIME_NOW, (0.026 + (i * 0.01)) * NSEC_PER_SEC, 0.25 * NSEC_PER_SEC);
            dispatch_source_set_event_handler(_timer, ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    [self moveSnowFlake:i];
                });
            });
            dispatch_resume(_timer);
            
            DispatchTimeObject *obj = [[DispatchTimeObject alloc] initWithSource:_timer];
            [timerArray addObject:obj];
        }
	}
}

-(void)createSnowFlakes {
	
	int count = 0;
	
	// creates flakes
	snowArray = [[NSMutableArray alloc] initWithCapacity:numbersOfFlake];

    for (int i = 0; i < numbersOfFlake; i++){
		NSMutableDictionary *flake = [[NSMutableDictionary alloc] init];
		[flake setObject:[NSNumber numberWithInt:0] forKey:FLAKE_STATUS];
		
        UIImageView *newView = [[UIImageView alloc] initWithImage:imageOfFlake];
		newView.userInteractionEnabled = NO;
		newView.tag = 0;
		
        CGFloat s = ((arc4random() % (int)(maxScaleSize * 10.0)) + (minScaleSize * 10.0)) / 10.0;
		float w = imageOfFlake.size.width * s;
		float h = imageOfFlake.size.height * s;
		int a = 1 + arc4random()%10;
        CGFloat f = ((arc4random() % 30) + 10.0) / 10.0;
		[flake setObject:[NSNumber numberWithFloat:f] forKey:FLAKE_SIZE];
		
		newView.alpha = (float)a / 10;
		newView.backgroundColor = [UIColor clearColor]; 
		newView.frame = CGRectMake(0, 0, w, h);
		
		int x = arc4random() % (int)ownerView.frame.size.width; 
		int y = -arc4random() % (int)ownerView.frame.size.height;
		newView.center = CGPointMake(x,y);
		[flake setObject:newView forKey:FLAKE_IMAGE];
		
		count++;
		if (count == 1) 
		{
			// moves and rotates right
            newView.tag = (directionsOfFlake == SnowFlakeDirectionBoth ? 1 : directionsOfFlake);
			[flake setObject:[NSNumber numberWithInt:RIGHT_ROTATION] forKey:ROTATION_TYPE];
		}
		else if (count == 2)
		{
			// moves and rotates left
            newView.tag = (directionsOfFlake == SnowFlakeDirectionBoth ? -1 : directionsOfFlake);
			[flake setObject:[NSNumber numberWithInt:LEFT_ROTATION] forKey:ROTATION_TYPE];
		}
		else if (count == 3) {
            count = 0;
            newView.tag = (directionsOfFlake == SnowFlakeDirectionBoth ? 0 : directionsOfFlake);
        }
		
        newView.alpha = 0;
        [ownerView addSubview:newView];
        [snowArray addObject:flake];
        newView = nil;
		flake = nil;
    }
	
	// creates movement and rotation
	[self restoreFlakeRotation];
    
    // show flakes
    [UIView animateWithDuration:0.3
                          delay:0
                        options:UIViewAnimationOptionAllowUserInteraction
                     animations:^{
                         for (int i = 0; i < [snowArray count]; i++) {
                             NSDictionary *flake = [snowArray objectAtIndex:i];
                             UIImageView *snow = [flake objectForKey:FLAKE_IMAGE];
                             snow.alpha = 1;
                         }
                     } completion:nil];
}

-(void)restoreFlakeRotation {
	
	if (snowArray != nil && [snowArray count] > 0) {
		CABasicAnimation *fullRotation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
		fullRotation.repeatCount = FLT_MAX;
		
		for (int i = 0; i < [snowArray count]; i++){
			NSDictionary *flake = [snowArray objectAtIndex:i];
			UIImageView *snow = [flake objectForKey:FLAKE_IMAGE];
			
			fullRotation.duration = 7.5 + [[flake objectForKey:FLAKE_SIZE] floatValue];
			int rotation = [[flake objectForKey:ROTATION_TYPE] floatValue];
			if (rotation >= RIGHT_ROTATION)
			{
				// moves and rotates right
				fullRotation.fromValue = [NSNumber numberWithFloat:0];
				fullRotation.toValue = [NSNumber numberWithFloat:((360*M_PI)/180)];
			}
			else if (rotation <= LEFT_ROTATION)
			{
				// moves and rotates left
				fullRotation.fromValue = [NSNumber numberWithFloat:((360*M_PI)/180)];
				fullRotation.toValue = [NSNumber numberWithFloat:0];
			}

			[snow.layer addAnimation:fullRotation forKey:KEY_ANIMATION];
		}	
	}
}

-(void)moveSnowFlake:(int)idx {
	
	// if must pause
	if (pause || snowArray == nil || [snowArray count] == 0) {
		return;
	}
	
	// moves only the flakes of specific size
	for (NSDictionary *flake in snowArray) {
		if (idx == [[flake objectForKey:FLAKE_SIZE] integerValue]) {
			
			UIImageView *snow = [flake objectForKey:FLAKE_IMAGE];
			
			CGPoint newCenter = snow.center;
			newCenter.y += ((arc4random() % 3) + 6.0) / 10.0;
			
			CGFloat xinc = ((arc4random() % 3) + 5.0) / 10.0;
			if (snow.tag > 0)
				newCenter.x += xinc;
			else if (snow.tag < 0)
				newCenter.x += -xinc;
			
			CGFloat w = ownerView.frame.size.width;
			CGFloat h = ownerView.frame.size.height;
            
            UIDeviceOrientation deviceOrientation = [UIDevice currentDevice].orientation;
			if (UIDeviceOrientationIsLandscape(deviceOrientation)) {
				w = ownerView.frame.size.height;
				h = ownerView.frame.size.width;
			}
			
            // checks if out of the screen
			if (newCenter.x > w){
				newCenter.x = arc4random() % (int)w;
				newCenter.y = 0 - snow.bounds.size.height;
				snow.center = newCenter;
			} else if (newCenter.x < 0) {
				newCenter.x = w;
				newCenter.y = h;
				snow.center = newCenter;
			} else if (newCenter.y > h + snow.bounds.size.height) {
				snow.center = CGPointMake(arc4random() % (int)w, 0 - snow.bounds.size.height);
			} else {
				snow.center = newCenter;
			}
			
		}
	}
}

- (void)removeAllFlakesWithAnimation:(BOOL)animated {
    
	if (snowArray != nil && [snowArray count] > 0) {
        if (animated) {
            [UIView animateWithDuration:0.3
                                  delay:0
                                options:UIViewAnimationOptionAllowUserInteraction
                             animations:^{
                                 // removes current flakes from screen
                                 for (NSDictionary *flake in snowArray) {
                                     UIImageView *snow = [flake objectForKey:FLAKE_IMAGE];
                                     snow.alpha = 0;
                                 }
                             } completion:^(BOOL finished) {
                                 // removes current flakes from screen
                                 for (NSDictionary *flake in snowArray) {
                                     UIImageView *snow = [flake objectForKey:FLAKE_IMAGE];
                                     [snow removeFromSuperview];
                                 }
                                 
                                 // free memory
                                 snowArray = nil;
                             }];
        } else {
            // removes current flakes from screen
            for (NSDictionary *flake in snowArray) {
                UIImageView *snow = [flake objectForKey:FLAKE_IMAGE];
                [snow removeFromSuperview];
            }
            
            // free memory
            snowArray = nil;
        }
	}
}

#pragma mark - Private Base64 Methods

- (UIImage *)getImageFromBase64:(NSString *)base64String {
	base64String = [NSString stringWithFormat:@"data:image/png;base64,%@", base64String];
	NSURL *url = [NSURL URLWithString:base64String];   
	NSData *imageData = [NSData dataWithContentsOfURL:url];
	return [UIImage imageWithData:imageData];
}

#pragma mark - Private Date Methods

- (NSDate*)setDateFromYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day {
	
	NSDate *date = [NSDate date];
	NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
	NSDateComponents *components = [gregorian components:(NSCalendarUnitYear | NSCalendarUnitMonth |  NSCalendarUnitDay) fromDate:date];
	[components setYear:year];
	[components setMonth:month];
	[components setDay:day];
	
	NSDate *newDate = [gregorian dateFromComponents:components];
	
	return newDate;
}

- (BOOL)isBetweenDate:(NSDate*)currentDate beginDate:(NSDate*)beginDate andDate:(NSDate*)endDate
{
	// checks if a date is between two other dates
    if ([currentDate compare:beginDate] == NSOrderedAscending)
        return NO;
	
    if ([currentDate compare:endDate] == NSOrderedDescending) 
        return NO;
	
    return YES;
}

- (void)dealloc
{
    imageOfFlake = nil;
    [self stopAnimating];
}

@end

@implementation DispatchTimeObject

- (instancetype)initWithSource:(dispatch_source_t)source
{
    if (self = [super init]) {
        self.source = source;
    }
    
    return self;
}

@end

