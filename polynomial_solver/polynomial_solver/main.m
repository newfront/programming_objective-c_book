//
//  main.m
//  polynomial_solver
//
//  Created by Scott Haines on 7/22/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // 3x**3 - 5x**2 + 6
    // solve for x = 2.55
    
    float x = 2.55;
    float result;
    
    result = 3*(x*x*x) - 5*(x*x) + 6;
    
    NSLog(@"solved: %f",result); // 2.323162e+01 == 23.231621

    [pool drain];
    return 0;
}

