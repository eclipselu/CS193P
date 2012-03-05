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
    PolygonShape *poly = [[PolygonShape alloc] init];
    NSLog(@"%@", [poly description]);
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

