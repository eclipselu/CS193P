//
//  PolygonShape.h
//  WhatATool
//
//  Created by Lu Dang on 3/5/12.
//  Copyright (c) 2012 Zhejiang University. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PolygonShape : NSObject

@property int numberOfSides;
@property int minimumNumberOfSides;
@property int maximumNumberOfSides;
@property (readonly) float angleInDegrees;
@property (readonly) float angleInRadians;
@property (readonly) NSString * name;
@property (readonly) NSString * description;

+ (NSDictionary *) PolygonNames;
+ (void) initialize;
- (void) setNumberOfSides:(int)sides;
- (void) setMinimumNumberOfSides:(int)minsides;
- (void) setMaximumNumberOfSides:(int)maxsides;
- (float) angleInDegrees;
- (float) angleInRadians;
- (NSString *) name;
- (NSString *) description;
- (id) initWithNumberOfSides:(int)sides minimumNumberOfSides:(int)minsides maximumNumberOfSides:(int)maxsides;
- (id) init;
- (void) dealloc;


@end
