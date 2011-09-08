//
//  main.m
//  GCD
//
//  Created by Scott Haines on 9/6/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

// Greatest Common Denominator

// static functions can only be called by other functions or methods that appear in the same file that contains the function definition
static int gcd (int u, int v)
{
    int temp;
    
    while ( v != 0)
    {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    return u;
}

// take an Array as a parameter int values[]
int minimum(int values[], int numElements)
{
    int minValue, i;
    
    minValue = values[0];
    
    for (i = 1; i < numElements; ++i)
    {
        if (values[i] < minValue)
            minValue = values[i];
    }
    return (minValue);
}

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    int result;
    
    result = gcd(150,35);
    NSLog(@"The result of 150 and 35 is %i",result);
    
    result = gcd(1026,405);
    NSLog(@"The result of 1026 and 405 is %i",result);
    
    NSLog(@"The result of 83 and 240 is %i",gcd(83,240));
    
    int values[] = {4,6,10,-2,34,45,50,9,10,23,-10};
    
    result = minimum(values, 11);
    NSLog(@"minimum in values is %i",result);

    [pool drain];
    return 0;
}

