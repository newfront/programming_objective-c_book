//
//  main.m
//  do_loops
//
//  Created by Scott Haines on 7/22/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    int number, right_digit;
    
    NSLog(@"Enter your number");
    
    scanf("%i", &number);
    
    do 
    {
        if(number == 15)
        {
            // break out of the loop
            break;
        }
        right_digit = number % 10;
        NSLog(@"%i",right_digit);
        number /= 10;
    }
    while ( number != 0);

    [pool drain];
    return 0;
}

