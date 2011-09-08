//
//  main.m
//  nsarray_chp15
//
//  Created by Scott Haines on 8/2/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    int i;
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    // Create an Array to contain the month names
    
    NSArray *monthNames = [NSArray arrayWithObjects:@"January",@"February",@"March",@"April",@"May",@"June",@"July",@"August",@"September",@"October",@"November",@"December", nil];
    
    // Now list all the elements in the array
    
    NSLog(@"Month Name");
    NSLog(@"== ==========");
    
    for(i=0;i< 12;++i)
    {
        NSLog(@"%2i %@", i + 1, [monthNames objectAtIndex:i]);
    }

    [pool drain];
    return 0;
}

