//
//  main.m
//  Character_Arrays
//
//  Created by Scott Haines on 9/6/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // \0 is a terminating character
    char word[] = {'H','E','L','L','O','!','\0'};
    int i;
    
    for (i = 0; i < 6; ++i)
    {
        NSLog(@"%c",word[i]);
    }

    NSLog(@"%s",word);
    
    [pool drain];
    return 0;
}

