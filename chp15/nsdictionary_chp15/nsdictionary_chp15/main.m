//
//  main.m
//  nsdictionary_chp15
//
//  Created by Scott Haines on 8/2/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    NSMutableDictionary *glossary = [NSMutableDictionary dictionary];
    // store three entries in the glossary
    
    [glossary setObject:@"A class defined so other classes can inherit from it" forKey:@"abstract class"];
    
    [glossary setObject:@"To implement all the methods defined in a protocol" forKey:@"adopt"];
    
    [glossary setObject:@"Storing an object for later use" forKey:@"archiving"];
    
    // Retrieve and display them
    
    /*
    NSLog(@"abstract class: %@",[glossary objectForKey:@"abstract class"]);
    NSLog(@"adopt: %@", [glossary objectForKey:@"adopt"]);
    NSLog(@"archiving: %@", [glossary objectForKey:@"archiving"]);
    */
    
    for( NSString *key in glossary)
    {
        NSLog(@"%@: %@", key, [glossary objectForKey:key]);
    }

    [pool drain];
    return 0;
}

