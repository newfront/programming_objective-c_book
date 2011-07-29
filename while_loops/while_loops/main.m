//
//  main.m
//  while_loops
//
//  Created by Scott Haines on 7/22/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    /*int count = 1;
    
    while (count <= 5)
    {
        NSLog(@"fucking clock is ticking.... %i",count);
        ++count;
    }
    */
    
    // This program finds the greatest common divisor of two nonnegative integer values
    unsigned int u,v,temp;
    
    NSLog(@"Please type in two nonnegative integers.");
    scanf("%i%i",&u,&v);
    
    while (v != 0)
    {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    NSLog(@"The greatest common divisor is %u",u);

    [pool drain];
    return 0;
}

