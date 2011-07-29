//
//  main.m
//  if_else_6
//
//  Created by Scott Haines on 7/25/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    int year, rem_4, rem_100, rem_400;
    
    NSLog(@"Enter the year to be tested");
    scanf("%i",&year);
    
    rem_4 = year % 4;
    rem_100 = year % 100;
    rem_400 = year % 400;
    
    if (rem_4 == 0 && rem_100 != 0 || rem_400 == 0)
        NSLog(@"It's a leap year.");
    else
        NSLog(@"Nope, not a leap year.");

    [pool drain];
    return 0;
}

