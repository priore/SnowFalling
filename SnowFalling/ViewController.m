//
//  ViewController.m
//  SnowFalling
//
//  Created by Danilo Priore on 13/12/15.
//  Copyright © 2015 Danilo Priore. All rights reserved.
//

#import "ViewController.h"
#import "SnowFalling.h"

@interface ViewController ()

@property (nonatomic, strong) SnowFalling *snow;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.snow = [[SnowFalling alloc] initWithView:self.view];
    
    // personalize values (optional)
    self.snow.numbersOfFlake = 50;
    self.snow.directionsOfFlake = SnowFlakeDirectionBoth;
    //self.snow.imageOfFlake = [UIImage imageNamed:@"snow_flake.png"];
    
    self.snow.hidden = NO;
}

@end
