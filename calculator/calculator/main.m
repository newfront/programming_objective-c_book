//
//  main.m
//  calculator
//
//  Created by Scott Haines on 7/22/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject {
@private
    double accumulator;
}
-(void) setAccumulator:(double) value;
-(void) clear;
-(double) accumulator;

// arithmetic methods

-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;
@end

@implementation Calculator

-(void) setAccumulator:(double) value
{
    accumulator = value;
}

-(void) clear
{
    accumulator = 0;
}

-(double) accumulator
{
    return accumulator;
}

-(void) add:(double) value
{
    accumulator += value;
}

-(void) subtract:(double) value
{
    accumulator -= value;
}

-(void) divide:(double) value
{
    if(value != 0)
    {
        accumulator /= value;
    }
}

-(void) multiply:(double) value
{
    accumulator *= value;
}

@end

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    Calculator *calculator = [[Calculator alloc] init];
    [calculator setAccumulator:0];
    [calculator add:40];
    [calculator multiply:20];
    [calculator subtract:10];
    NSLog(@"The value in the calculator is now: %f",[calculator accumulator]);
    NSLog(@"The value in the calculator is now: %g",[calculator accumulator]);

    [pool drain];
    return 0;
}

