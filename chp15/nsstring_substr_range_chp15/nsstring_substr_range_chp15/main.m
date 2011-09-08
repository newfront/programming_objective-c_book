//
//  main.m
//  nsstring_substr_range_chp15
//
//  Created by Scott Haines on 8/2/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    NSString *str1 = @"This is string A";
    NSString *str2 = @"This is string B";
    NSString *res;
    
    NSRange subRange;
    
    //Extract first 3 chars from string
    
    // using substringToIndex:(NSUInteger)
    res = [str1 substringToIndex:3];
    NSLog(@"First 3 chars of str1: %@", res);
    
    // Extract chars to end of string starting at index 5
    res = [str1 substringFromIndex:5];
    NSLog(@"chars from index 5 to end: %@", res);
    
    // Extract chars from index 8 through 13
    res = [[str1 substringFromIndex:8] substringToIndex:6];
    NSLog(@"Chars from index 8 through 13... 8+6=13: %@", res);
    
    // Extract chars from index 8 through 13 (6 chars)
    res = [str1 substringWithRange: NSMakeRange(8, 6)];
    NSLog(@"Chars from index 8 through 13: %@", res);
    
    // Locate one string inside another
    
    subRange = [str1 rangeOfString:str2];
    
    if(subRange.location == NSNotFound)
    {
        NSLog(@"String not found");
    }
    else
    {
        NSLog(@"String is at index %lu, length is %lu",subRange.location, subRange.length);
    }
    

    [pool drain];
    return 0;
}

