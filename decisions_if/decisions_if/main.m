//
//  main.m
//  decisions_if
//
//  Created by Scott Haines on 7/25/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    int number;
    
    NSLog(@"type in a number");
    scanf("%i",&number);
    
    if (number < 0 )
        number = -number;
    
    NSLog(@"The absolute value is %i",number);

    [pool drain];
    return 0;
}

