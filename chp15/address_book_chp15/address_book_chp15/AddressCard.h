//
//  AddressCard.h
//  address_book_chp15
//
//  Created by Scott Haines on 8/2/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface AddressCard : NSObject {
    NSString *name;
    NSString *email;
}

-(void) setName:(NSString *) theName;
-(void) setEmail:(NSString *) theEmail;

-(NSString *) name;
-(NSString *) email;

-(void) print;

@end
