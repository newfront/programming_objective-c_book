//
//  main.m
//  protocol_delegation
//
//  Created by Scott Haines on 7/28/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

// make generic protocol
// all instance that want to print should use
@protocol Printer <NSObject>

-(void) print;

@optional
-(void) marker;

@end

@interface Print : NSObject <Printer> {
@private
    int value;
}
@property int value;
-(id) initWithValue:(int) val;
-(void) print;
@end

@implementation Print
@synthesize value;

-(id) initWithValue:(int) val
{
    self = [super init];
    
    if(self)
    {
        value = val;
    }
    return self;
    
}

-(void) print
{
    NSLog(@"value: %i", value);
}

@end

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    Print <Printer> *myPrinter = [[Print alloc] initWithValue:80];
    
    // check if Object conforms to a specific protocol
    if([myPrinter conformsToProtocol:@protocol(Printer)] == YES)
        [myPrinter print];
    
    [myPrinter release];

    [pool drain];
    return 0;
}

