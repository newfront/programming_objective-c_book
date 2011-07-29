//
//  main.m
//  prime_numbers_6
//
//  Created by Scott Haines on 7/25/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    /*int p, d, isPrime;
    
    for (p = 2; p <= 100000; ++p)
    {
        isPrime = 1;
        
        for (d = 2; d < p; ++d)
        {
            if (p % d == 0)
                isPrime = 0;
        }
        
        if(isPrime != 0)
        {
            NSLog(@"%i ", p);
        }
    }
     */
    
    int p, d;
    BOOL isPrime;
    
    for (p = 2; p <= 10000; ++p)
    {
        isPrime = YES;
    
        for(d = 2; d < p; ++d)
        {
            if(p % d == 0)
            {
                isPrime = NO;
            }
        }
        
        if(isPrime == YES)
            NSLog(@"%i",p);
    }

    [pool drain];
    return 0;
}

