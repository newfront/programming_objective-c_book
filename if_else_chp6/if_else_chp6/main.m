//
//  main.m
//  if_else_chp6
//
//  Created by Scott Haines on 7/25/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    int number_to_test, remainder;
    
    NSLog(@"Enter your number to be tested: ");
    scanf("%i",&number_to_test);
    
    remainder = number_to_test % 2;
    
    /*if (remainder == 0)
        NSLog(@"The number is even");
    
    if (remainder != 0)
        NSLog(@"the number is odd");
    */

    if (remainder == 0)
        NSLog(@"The number is even");
    
    else
        NSLog(@"the number is odd");


    [pool drain];
    return 0;
}

