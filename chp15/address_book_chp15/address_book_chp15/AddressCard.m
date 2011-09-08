//
//  AddressCard.m
//  address_book_chp15
//
//  Created by Scott Haines on 8/2/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import "AddressCard.h"


@implementation AddressCard

-(void) setName:(NSString *)theName
{
    if(name != theName)
    {
        // allows object to take ownership, not value by reference
        name = [[NSString alloc] initWithString:theName];
    }
}

-(void) setEmail:(NSString *)theEmail
{
    if(email != theEmail)
    {
        // allows object to take ownership, not value by reference
        email = [[NSString alloc] initWithString:theEmail];
    }
}

-(NSString *) name
{
    return name;
}

-(NSString *) email
{
    return email;
}

-(void) print
{
    NSLog(@"========= Contact ===============\n");
    NSLog(@"Name: %@",name);
    NSLog(@"Email: %@\n", email);
    NSLog(@"=================================");
}


/*
 Super Methods
*/
- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)dealloc
{
    // clean up memory
    [name release];
    [email release];
    [super dealloc];
    
}

@end
