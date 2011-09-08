//
//  main.m
//  Functions_CalculateTriangularNumber
//
//  Created by Scott Haines on 9/6/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

void calculateTriangularNumber (int n)
{
    int i, triangularNumber = 0;
    
    for (i = 1; i <= n; ++i)
    {
        NSLog(@"%i",i);
        triangularNumber += i;
    }
    NSLog(@"Triangular number %i is %i",n,triangularNumber);
}

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    calculateTriangularNumber(10);
    calculateTriangularNumber(20);
    calculateTriangularNumber(50);

    [pool drain];
    return 0;
}

