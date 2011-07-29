//
//  main.m
//  Rectangle
//
//  Created by Scott Haines on 7/28/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Square.h"
#import "XYPoint.h"

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    Rectangle *rect = [[Rectangle alloc] init];
    Square *square = [[Square alloc] init];
    XYPoint *point = [[XYPoint alloc] init];
    
    [point setX:20 andY:50];
    
    [rect setWidth:300 andHeight:400];
    rect.origin = point;
    NSLog(@"Rectangle (area): %i", [rect area]);
    NSLog(@"Rectangle (perimeter): %i", [rect perimeter]);
    NSLog(@"Rectangle origin) %i:%i", rect.origin.x, rect.origin.y);
    
    [square setSide:400];
    NSLog(@"Square (area): %i", [square area]);
    NSLog(@"Square (perimeter): %i", [square perimeter]);
    
    XYPoint *newOrigin = rect.origin;
    [newOrigin setX:200 andY:500]; // trumps rect.origin, allows override
    //[point setX:90 andY:100];
    NSLog(@"Rectangle origin) %i:%i", rect.origin.x, rect.origin.y); //values are trumped because origin is already set
    
    [rect release];
    [point release];

    [pool drain];
    return 0;
}

