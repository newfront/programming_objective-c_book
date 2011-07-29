//
//  main.m
//  fraction_two
//
//  Created by Scott Haines on 7/25/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

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
-(double) convertToNum;
@end

@implementation Fraction

-(void) print
{
    NSLog(@"fraction: %i/%i",numerator,denominator);
}

-(void) setNumerator: (int) n
{
    numerator = n;
}
-(void) setDenominator: (int) d
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
-(double) convertToNum
{
    if (denominator != 0) {
        return (double) numerator / denominator;        
    }
    else
    {
        return 0.0;
    }
}

@end

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    double f;
    
    Fraction *fraction = [[Fraction alloc] init];
    [fraction setNumerator:3];
    [fraction setDenominator:4];
    [fraction print];
    
    f = [fraction convertToNum];
    
    NSLog(@"conversion of fraction is %f",f);
    
    
    [pool drain];
    return 0;
}

