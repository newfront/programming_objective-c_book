//
//  main.m
//  MultiDimentional_Arrays
//
//  Created by Scott Haines on 9/6/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    int M[4][5] = {
        {10,5,-3,17,82},
        {9,0,0,8,-7},
        {32,20,1,0,14},
        {0,0,8,7,6}
    };
    
    int i,j;
    
    for (i = 0; i < 4; ++i)
    {
        NSLog(@"Starting at M[%i]",i);
        for (j = 0; j < 5; ++j)
        {
            NSLog(@"%i",M[i][j]);
        }
    }

    [pool drain];
    return 0;
}

