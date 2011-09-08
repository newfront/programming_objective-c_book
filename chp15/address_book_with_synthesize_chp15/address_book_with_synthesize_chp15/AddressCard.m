//
//  AddressCard.m
//  address_book_with_synthesize_chp15
//
//  Created by Scott Haines on 8/2/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import "AddressCard.h"


@implementation AddressCard
@synthesize email, name;

/* print method */

-(void) print
{
    NSLog(@"======================================");
    NSLog(@"|  |");
    NSLog(@"| %@ |", name);
    NSLog(@"| %@ |", email);
    NSLog(@"|  |");
    NSLog(@"|  |");
    NSLog(@"|  |");
    NSLog(@"| O O |");
    NSLog(@"======================================");
}

-(void) setName:(NSString *) theName andEmail:(NSString *)theEmail
{
    self.name = theName;
    self.email = theEmail;
}

// override isEquals method on NSObject
-(BOOL) isEqual:(AddressCard *)theCard
{
    if ([name isEqualToString: theCard.name] == YES &&
        [email isEqualToString: theCard.email] == YES)
        return YES;
    else
        return NO;
}

/*-(NSComparisonResult) compareNames: (id) element
{
    return [name compare: [element name]];
}
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
    [name release];
    [email release];
    [super dealloc];
}

@end
