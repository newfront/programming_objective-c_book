//
//  main.m
//  fraction_3_chp7
//
//  Created by Scott Haines on 7/28/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    Fraction *aFraction = [[Fraction alloc] init];
    Fraction *sum = [[Fraction alloc] init], *sum2;
    
    int i, n, pow2;
    
    [sum setTo: 0 over: 1]; // set first fraction to 0
    
    NSLog(@"Enter a value for n:");
    scanf("%i", &n);
    
    pow2 = 2;
    for (i = 1; i <= n; ++i)
    {
        [aFraction setTo:1 over:pow2];
        sum2 = [sum add:aFraction];
        [sum release]; // release previous sum
        sum = sum2;
        pow2 *= 2;
    }
    NSLog(@"After %i iterations the value of sum is %f", n, [sum convertToNum]);
    
    [sum release];
    [aFraction release];

    /*Fraction *fraction = [[Fraction alloc] init];
    Fraction *aFraction = [[Fraction alloc] init];
    
    [aFraction setTo:1 over:3];
    
    fraction.numerator = 1;
    fraction.denominator = 3;
    
    NSLog(@"Currently our fraction is ");
    [fraction print];
    
    // update fraction with setTo method
    [fraction setTo:3 over:4];
    
    NSLog(@"Now fraction is ");
    [fraction print];
    
    NSLog(@"%f",[fraction convertToNum]);
    
    [fraction add:aFraction];
    
    NSLog(@"Now fraction is ");
    [fraction print];
    
    NSLog(@"%f",[fraction convertToNum]);
    
    Fraction *resultFraction = [[Fraction alloc] init];
    resultFraction = [fraction add:aFraction];
    
    [resultFraction print];
    
    [fraction release];
    [aFraction release];
    [resultFraction release];
    */

    [pool drain];
    return 0;
}

