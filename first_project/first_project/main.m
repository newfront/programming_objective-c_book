//
//  main.m
//  first_project
//
//  Created by Scott Haines on 7/22/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
    //NSLog(@"Programming is fun!");
    //NSLog(@"Programming in Objective-C is more fun!");
    //NSLog(@"What about \n new-line \n new-line?");
    
    int sum,sumthing_else;
    
    sum = 50 + 24;
    sumthing_else = sum + 60;
    
    NSLog(@"What the hell is the sum? %i",(sum+sumthing_else));
    
    [pool drain];
    return 0;
}

