//
//  Calculator.m
//  switch_statment_6
//
//  Created by Scott Haines on 7/25/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import "Calculator.h"


@implementation Calculator

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

-(void) setAccumulator: (double) value
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

-(void) add: (double) value
{
    accumulator += value;
}
-(void) subtract: (double) value
{
    accumulator -= value;
}

-(void) multiply: (double) value
{
    accumulator *= value;
}
-(void) divide: (double) value
{
    accumulator /= value;
}


- (void)dealloc
{
    [super dealloc];
}

@end

