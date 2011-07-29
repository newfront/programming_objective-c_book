//
//  main.m
//  stdin_with_triangular_numbers
//
//  Created by Scott Haines on 7/22/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    int n, number, triangularNumber;
    
    NSLog(@"What triangular number do you want?");
    
    // send a pointer to number in memory block (with stdin)
    scanf("%i", &number);
    
    triangularNumber = 0;
    
    for (n = 1; n <= number; ++n)
    {
        triangularNumber += n;
    }
    
    NSLog(@"Triangular number for %i is %i",number,triangularNumber);

    [pool drain];
    return 0;
}

