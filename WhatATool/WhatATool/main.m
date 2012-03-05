//
//  main.m
//  WhatATool
//
//  Created by Lu Dang on 3/5/12.
//  Copyright (c) 2012 Zhejiang University. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PolygonShape.h"

void PrintPolygonInfo()
{
    NSMutableArray *array = [NSMutableArray array];
    PolygonShape *poly1 = [[PolygonShape alloc] initWithNumberOfSides:4 minimumNumberOfSides:3 maximumNumberOfSides:7];
    PolygonShape *poly2 = [[PolygonShape alloc] initWithNumberOfSides:6 minimumNumberOfSides:5 maximumNumberOfSides:9];
    PolygonShape *poly3 = [[PolygonShape alloc] initWithNumberOfSides:12 minimumNumberOfSides:9 maximumNumberOfSides:12];
    
    [array addObject:poly1];
    NSLog(@"%@", [poly1 description]);
    [array addObject:poly2];
    NSLog(@"%@", [poly2 description]);
    [array addObject:poly3];
    NSLog(@"%@", [poly3 description]);
    
}
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        PrintPolygonInfo();
    }
    return 0;
}

