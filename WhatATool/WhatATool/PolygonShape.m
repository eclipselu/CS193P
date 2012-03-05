//
//  PolygonShape.m
//  WhatATool
//
//  Created by Lu Dang on 3/5/12.
//  Copyright (c) 2012 Zhejiang University. All rights reserved.
//

#import "PolygonShape.h"

@implementation PolygonShape
@synthesize numberOfSides;
@synthesize minimumNumberOfSides;
@synthesize maximumNumberOfSides;

static NSDictionary * PolygonNames;

+ (void) initialize 
{
    if (!PolygonNames) 
    {
        PolygonNames = [NSDictionary dictionaryWithObjectsAndKeys:@"triangle", @"3", 
                        @"square", @"4", @"pentagon", @"5", @"hexagon", @"6", @"heptagon", @"7", 
                        @"octagon", @"8", @"enneagon", @"9", @"decagon", @"10", 
                        @"hendecagon", @"11", @"dodecagon", @"12", nil];
    }
}

- (void) setMinimumNumberOfSides:(int)minsides
{
    if (minsides <= 2) 
    {
        NSLog(@"Min sides must be greater than 2, setting minimumNumberOfSides to 2... ");
        minimumNumberOfSides = 2;
    }
    else 
    {
        // minimumNumberOfSides = minsides;
    }
}

- (void) setMaximumNumberOfSides:(int)maxsides
{
    if (maxsides > 12) 
    {
        NSLog(@"Min sides must be <= 12, setting minimumNumberOfSides to 12... ");
        maximumNumberOfSides = 12;
    }
    else 
    {
        // maximumNumberOfSides = maxsides;
    }
}

- (void) setNumberOfSides:(int)sides
{
    if (sides <= maximumNumberOfSides && sides >= minimumNumberOfSides)
    {
        numberOfSides = sides;
    }
    else
    {
        NSLog(@"Number of sides must be between min sides and max sides, setting numberOfSides to min sides...");
        // numberOfSides = minimumNumberOfSides;
    }
}

- (id) initWithNumberOfSides:(int)sides minimumNumberOfSides:(int)minsides maximumNumberOfSides:(int)maxsides
{
    if (self = [super init])
    {
        [self setMaximumNumberOfSides:maxsides];
        [self setMinimumNumberOfSides:minsides];
        [self setNumberOfSides:sides];
    }
    
    return self;
}

- (id) init
{
    if (self = [super init])
    {
        numberOfSides = 5;
        maximumNumberOfSides = 10;
        minimumNumberOfSides = 3;
    }
    
    return self;
}

- (float) angleInDegrees
{
    return (numberOfSides - 2) * 180.0 / numberOfSides;
}

- (float) angleInRadians
{
    return (numberOfSides - 2) * 3.1415926 / 2 / numberOfSides;
}

- (NSString *) name
{
    return [PolygonNames objectForKey:[NSString stringWithFormat:@"%d",numberOfSides]];
}

- (NSString *) description
{
    return [NSString stringWithFormat:@"Hello I am a %d-sided polygon (aka a %@) with angles of %.f degrees (%f radians).",
            numberOfSides, self.name, self.angleInDegrees, self.angleInRadians];
}

- (void) dealloc
{
    NSLog(@"Hey, I'm currently deallocing... :)");
}

@end
