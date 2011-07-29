//
//  main.m
//  categories
//
//  Created by Scott Haines on 7/28/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Simple : NSObject {
    int k;
}
@property int k;

-(void) print;
-(id) initWithValue:(int) value;

@end

@implementation Simple
@synthesize k;
-(id) initWithValue:(int)value
{
    self = [super init];
    
    if(self)
    {
        k = value;
    }
    
    return self;
}

-(void) print
{
    NSLog(@"value in Simple is :%i", k);
}
@end

// like a module
@interface Simple (MoreSimple)
-(void) printer;
@end

@implementation Simple (MoreSimple)
-(void) printer
{
    NSLog(@"Yes I am printing");
}

@end

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    Simple *s = [[Simple alloc] initWithValue:900];
    [s print];
    [s printer];

    [pool drain];
    return 0;
}

