//
//  AddressCard.h
//  address_book_with_synthesize_chp15
//
//  Created by Scott Haines on 8/2/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface AddressCard : NSObject {
    NSString *name;
    NSString *email;
}

/*
 copy - says to make a copy of the instance variable in its setter method
 nonatomic - getter method should not retain or autorelease the instance variable before returning its value
*/

@property (copy, nonatomic) NSString *name, *email;
-(void) print;

-(void) setName: (NSString *) theName andEmail:(NSString *) theEmail;

-(BOOL) isEqual:(AddressCard *) theCard;

//-(NSComparisonResult) compareNames: (id) element;

@end
