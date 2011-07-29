//
//  main.m
//  inheritance_override_chp8
//
//  Created by Scott Haines on 7/28/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassA : NSObject {
    int x;
}
-(void) initVar;
-(void) printVar;
@end

@implementation ClassA

-(void) initVar
{
    x = 100;
}

-(void) printVar
{
    NSLog(@"x=%i",x);
}

@end

@interface ClassB : ClassA {
    int y;
}
-(void) setY:(int) yVal;
-(void) printVar;
@end

@implementation ClassB

-(void) setY:(int) yVal
{
    y = yVal;
}

-(void) printVar
{
    NSLog(@"x (a or b) is %i, and y (only b): %i", x,y);
}

@end

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    ClassA *a = [[ClassA alloc] init];
    ClassB *b = [[ClassB alloc] init];
    
    [a initVar];
    [b initVar];
    [b setY:60];
    
    [a printVar];
    [b printVar];
    
    [a release];
    [b release];

    [pool drain];
    return 0;
}

