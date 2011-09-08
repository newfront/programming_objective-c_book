//
//  main.m
//  nsarray_integer_chp15
//
//  Created by Scott Haines on 8/2/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    NSMutableArray *numbers = [NSMutableArray array];
    NSNumber *myNumber;
    
    int i;
    
    // Create an array with the numbers 0 - 9
    
    for(i=0;i<10;++i)
    {
        myNumber = [NSNumber numberWithInteger:i];
        [numbers addObject:myNumber];
    }
    
    // sequence through the array and display the values
    
    for(i=0;i<10;++i)
    {
        myNumber = [numbers objectAtIndex:i];
        NSLog(@"%@",myNumber);
    }
    
    // Look how NSLog display it with a single %@ format
    NSLog(@"===== Using a single NSLog");
    NSLog(@"%@",numbers);
    

    [pool drain];
    return 0;
}

