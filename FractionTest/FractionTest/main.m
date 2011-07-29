//
//  main.m
//  FractionTest
//
//  Created by Scott Haines on 7/25/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    Fraction *fraction = [[Fraction alloc] init];
    
    [fraction setNumerator: 1];
    [fraction setDenominator: 3];
    
    NSLog(@"The value of the fraction is:");
    [fraction print];
    [fraction release];

    [pool drain];
    return 0;
}

