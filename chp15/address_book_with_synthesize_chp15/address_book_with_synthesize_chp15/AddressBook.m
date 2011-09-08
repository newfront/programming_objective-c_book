//
//  AddressBook.m
//  address_book_with_synthesize_chp15
//
//  Created by Scott Haines on 8/2/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import "AddressBook.h"


@implementation AddressBook

-(id) initWithName:(NSString *)name
{
    self = [super init];
    
    if(self)
    {
        bookName = [[NSString alloc] initWithString:name];
        book = [[NSMutableArray alloc] init];
    }
    return self;
}

- (id)init
{
    return [self initWithName: @"NoName"];
}

-(void) addCard:(AddressCard *)theCard
{
    [book addObject:theCard];
}

-(int) entries
{
    return [book count];
}

-(void) list
{
    NSLog(@"============== Contents of: %@ ============", bookName);
    
    for(AddressCard *theCard in book)
    {
        NSLog(@"%-20s %-32s", [theCard.name UTF8String],[theCard.email UTF8String]);
    }
    
    NSLog(@"===========================================");
}

/* 
 Find an Address Card in the Book
*/

-(AddressCard *) lookup:(NSString *)theName
{
    for (AddressCard *nextCard in book)
    {
        if([nextCard.name caseInsensitiveCompare:theName] == NSOrderedSame)
        {
            return nextCard;
        }
    }
    return nil;
}

-(void) sort
{
    //[book sortUsingSelector:@selector(compareNames:)];
    
    // same sort but using blocks
    [book sortUsingComparator:
     ^(id obj1, id obj2)
     {
         //return [obj1 compareNames:obj2];
         return [[obj1 name] compare:[obj2 name]];
     }];
}

-(void) removeCard:(AddressCard *)theCard
{
    [book removeObject:theCard];
}

- (void)dealloc
{
    [bookName release];
    [book release];
    [super dealloc];
}

@end
