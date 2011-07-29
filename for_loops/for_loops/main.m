//
//  main.m
//  for_loops
//
//  Created by Scott Haines on 7/22/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    int n, triangularNumber;
    
    triangularNumber = 0;
    
    /*
     RELATIONAL OPERATORS
     == (equal to)
     != (not equal to)
     < (less than)
     > (greater than)
     >= (greater than or equal to)
     */
    
    NSLog(@"TABLE OF TRIANGULAR NUMBERS");
    NSLog(@"n Sum from 1 to n");
    NSLog(@"-- --------");
    //for (n = 1; n <= 200; n = n + 1)
    for (n=1; n <= 200; ++n)
    {
        triangularNumber += n;
        NSLog(@"%i                     %i", n, triangularNumber);
    }
    NSLog(@"the 200th triangularNumber is : %i", triangularNumber); //the 200th triangularNumber is : 20100

    [pool drain];
    return 0;
}

