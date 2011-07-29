//
//  main.m
//  nested_if_statements
//
//  Created by Scott Haines on 7/25/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    int number, sign;
    
    NSLog(@"Please type in a number.");
    scanf("%i",&number);
    
    if (number < 0)
        sign = -1;
    else if ( number == 0 )
        sign = 0;
    else
        sign = 1;
    
    NSLog(@"Sign = %i",sign);

    [pool drain];
    return 0;
}

