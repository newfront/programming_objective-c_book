//
//  main.m
//  flip_rgb_hex
//
//  Created by Scott Haines on 7/25/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    unsigned int rgb1,rgb2, rgb3, rgb4;
    
    rgb1 = 0xFFFFFFFF;
    rgb2 = 0xAEAEAEAE;
    rgb3 = 0xCCCCCCCC;
    rgb4 = 0x33339999;
    
    NSLog(@"%x <<= 1 : %x", rgb1, ~rgb1);
    NSLog(@"%x <<= 1 : %x", rgb2, ~rgb2);
    NSLog(@"%x <<= 1 : %x", rgb3, rgb3 <<= 1);
    NSLog(@"%x <<= 1 : %x", rgb4, rgb4 <<= 3);

    [pool drain];
    return 0;
}

