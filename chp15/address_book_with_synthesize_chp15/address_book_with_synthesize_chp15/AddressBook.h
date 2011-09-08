//
//  AddressBook.h
//  address_book_with_synthesize_chp15
//
//  Created by Scott Haines on 8/2/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject {
    NSString *bookName;
    NSMutableArray *book;
}

-(id) initWithName: (NSString *) name;
-(void) addCard: (AddressCard *) theCard;
-(int) entries;
-(void) list;
-(AddressCard *) lookup:(NSString *) theName;
-(void) removeCard:(AddressCard *) theCard;

// sort address book entries

-(void) sort;

-(void) dealloc;

@end
