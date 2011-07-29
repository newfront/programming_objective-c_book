//
//  main.m
//  for_loop_variants
//
//  Created by Scott Haines on 7/22/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    int i,j;
    
    for(i=0,j=100; i < 10; ++i,j -= 10)
    {
        NSLog(@"%i:%i",i,j);
    }
    
    [pool drain];
    return 0;
}

