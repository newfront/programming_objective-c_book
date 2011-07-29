//
//  main.m
//  typedef_chp10
//
//  Created by Scott Haines on 7/28/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    typedef int Counter;
    
    Counter j,i;
    
    for(j=1;j<=10;++j)
    {
        for(i=1;i<=j;++i)
        {
            NSLog(@"j:%i, i:%i",j,i);
        }
    }

    [pool drain];
    return 0;
}

