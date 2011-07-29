//
//  main.m
//  assignment_operators
//
//  Created by Scott Haines on 7/22/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    int base = 10;
    float add_to_base = 125.35;
    
    float result;
    
    result = (float) base + add_to_base;
    NSLog(@"base is now: %f",result);
    
    
    result += 10.25;
    NSLog(@"base is now: %f",result);
    
    [pool drain];
    return 0;
}

