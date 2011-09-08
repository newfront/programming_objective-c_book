//
//  main.m
//  nsstring_strings_chp15
//
//  Created by Scott Haines on 8/1/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Foundation/NSString.h>
#import <Foundation/NSAutoreleasePool.h>


int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    NSString *str1 = @"This is string A";
    NSString *str2 = @"This is string B";
    NSString *res;
    
    NSComparisonResult compareResult;
    
    // Count the number of characters
    
    NSLog(@"Length of str1: %lu", [str1 length]);
    
    // Copy one string to another
    res = [NSString stringWithString:str1];
    NSLog(@"copy: %@", res);
    
    // copy one string to the end of another 
    // (append)
    str2 = [str1 stringByAppendingString:str2];
    NSLog(@"Concatenation: %@", str2);
    
    // test if the two strings are equal
    
    if ([str1 isEqualToString: res] == YES)
    {
        NSLog(@"str1 == res");
    }
    else
    {
        NSLog(@"str2 != res");
    }
    
    // Test if one string is <, ==, or > than another
    compareResult = [str1 compare:str2];
    
    if(compareResult == NSOrderedAscending)
    {
        NSLog(@"str1 < str2");
    }
    else if(compareResult == NSOrderedSame)
    {
        NSLog(@"str1 == str2");
    }
    else if(compareResult == NSOrderedDescending)
    {
        NSLog(@"str1 < str2");
    }
    else
    {
        // nada, should meet one of the conditions...
    }
    
    // convert string to uppercase
    
    res = [str1 uppercaseString];
    NSLog(@"Uppercase conversion: %s", [res UTF8String]);
    
    // conver string to lowercase
    res = [str1 lowercaseString];
    NSLog(@"Lowercase conversion: %@", res);
    
    NSLog(@"Original String: %@", str1);
    
    [pool drain];
    return 0;
}

