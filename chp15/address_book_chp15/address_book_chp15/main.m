//
//  main.m
//  address_book_chp15
//
//  Created by Scott Haines on 8/2/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    NSString *aName = @"Scott Haines";
    NSString *aEmail = @"scott@newfrontcreative.com";
    AddressCard *card1 = [[AddressCard alloc] init];
    
    [card1 setName:aName];
    [card1 setEmail:aEmail];
    
    [card1 print];
    
    [card1 release];

    [pool drain];
    return 0;
}

