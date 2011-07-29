//
//  main.m
//  ternary_operator_conditional
//
//  Created by Scott Haines on 7/25/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    int n;
    
    NSLog(@"give me a number");
    scanf("%i",&n);
    
    (n < 0) ? NSLog(@"number is less than zero") : NSLog(@"number is greater than zero");

    [pool drain];
    return 0;
}

