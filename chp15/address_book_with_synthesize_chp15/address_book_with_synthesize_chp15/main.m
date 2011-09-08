//
//  main.m
//  address_book_with_synthesize_chp15
//
//  Created by Scott Haines on 8/2/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"
#import "AddressBook.h"


int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    NSString *cName = @"Scott Haines";
    NSString *cEmail = @"scott@newfrontcreative.com";
    
    NSString *bName = @"Jeff Neable";
    NSString *bEmail = @"jeffneable@me.com";
    
    NSString *aName = @"Geogie Porgie";
    NSString *aEmail = @"porgie@me.com";
    
    NSString *dName = @"Samantha Zuel";
    NSString *dEmail = @"sammy@zuel.com";
    
    AddressCard *card1 = [[AddressCard alloc] init];
    AddressCard *card2 = [[AddressCard alloc] init];
    AddressCard *card3 = [[AddressCard alloc] init];
    AddressCard *card4 = [[AddressCard alloc] init];
    
    AddressCard *result;
    
    [card1 setName:aName andEmail:aEmail];
    [card2 setName:bName andEmail:bEmail];
    [card3 setName:cName andEmail:cEmail];
    [card4 setName:dName andEmail:dEmail];
    
    AddressBook *myBook = [[AddressBook alloc] initWithName:@"Scott's Address Book"];
    
    NSLog(@"Entries in the Book after creation: %i", [myBook entries]);
    
    [myBook addCard:card4];
    [myBook addCard:card2];
    [myBook addCard:card3];
    [myBook addCard:card1];
    
    NSLog(@"Entries in the Book after adding entries: %i", [myBook entries]);
    
    // list all entries
    [myBook list];
    [myBook sort];
    
    //[card1 print];
    //[card2 print];
    
    result = [myBook lookup:@"Scott Haines"];
    NSLog(@"Lookup User: Scott Haines");
    if(result.name != nil)
    {
        [result print];
    }
    [myBook removeCard:result];
    
    //[myBook removeCard:card2];
    [myBook list];
    
    [card1 release];
    [card2 release];
    [card3 release];

    [pool drain];
    return 0;
}

