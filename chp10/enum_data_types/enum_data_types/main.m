//
//  main.m
//  enum_data_types
//
//  Created by Scott Haines on 7/28/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    enum direction { up, down, left, right};
    
    enum direction currentDirection;
    
    currentDirection = right;
    
    NSLog(@"currently going: %i", currentDirection);
    NSLog(@"we were going: %i", (enum direction) (currentDirection - 1)); //0,1,2,3

    [pool drain];
    return 0;
}

