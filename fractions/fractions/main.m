//
//  main.m
//  fractions
//
//  Created by Scott Haines on 7/22/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

// --- @interface section

@interface Fraction : NSObject {
@private
    int numerator;
    int denominator;
}
-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;

@end

// ---- @implementation section

@implementation Fraction

-(void) print
{
    NSLog(@"%i/%i",self.numerator,self.denominator);
}

-(void) setNumerator:(int) n
{
    numerator = n;
}

-(void) setDenominator:(int) d
{
    denominator = d;
}

-(int) numerator
{
    return numerator;
}
-(int) denominator
{
    return denominator;
}

@end

int main (int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Fraction *fraction;
    
    // Create an instance of Fraction
    fraction = [Fraction alloc];
    fraction = [fraction init];
    
    Fraction *frac = [[Fraction alloc] init];
    NSLog(@"frac is");
    [frac setNumerator:2];
    [frac setDenominator:3];
    
    // Set fraction to 1/3
    
    [fraction setNumerator:1];
    [fraction setDenominator:3];
    NSLog(@"fraction is");
    [fraction print];
    
    [frac print];
    
    [pool drain];
    return 0;
}

