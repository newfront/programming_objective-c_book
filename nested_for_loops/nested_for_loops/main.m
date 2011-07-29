//
//  main.m
//  nested_for_loops
//
//  Created by Scott Haines on 7/22/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    
    int n,number,triangularNumber,counter;
    
    for (counter = 1; counter <= 5; ++counter)
    {
        NSLog(@"What triangular number do you want?");
        scanf("%i",&number);
        
        triangularNumber = 0;
        
        for (n = 1; n <= number; ++n)
        {
            triangularNumber += n;
        }
        NSLog(@"You triangularNumber for %i is %i", number,triangularNumber);
    }
    
    [pool drain];
    return 0;
}

