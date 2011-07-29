//
//  main.m
//  char_classification_6
//
//  Created by Scott Haines on 7/25/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    char c;
    
    NSLog(@"Enter a single characer");
    scanf("%c", &c);
    
    if (( c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z'))
        NSLog(@"It's an alphabetic character");
    else if ( c >= '0' && c <= '9')
        NSLog(@"It's a digit");
    else
        NSLog(@"It's a special character");

    [pool drain];
    return 0;
}

