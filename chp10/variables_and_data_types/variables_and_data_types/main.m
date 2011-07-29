//
//  main.m
//  variables_and_data_types
//
//  Created by Scott Haines on 7/28/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject {
    int numerator;
    int denominator;
}
@property int numerator, denominator;

-(void) setTo:(int) n over:(int) d;
-(id) initWith:(int) n over:(int) d;
-(void) print;
@end

@implementation Fraction
@synthesize numerator,denominator;

-(void) setTo:(int)n over:(int)d
{
    numerator = n;
    denominator = d;
}

-(id) initWith:(int) n over:(int) d
{
    self = [super init];
    
    if(self)
    {
        [self setTo:n over:d];
    }
    
    extern int gCounter;
    ++gCounter;
    
    return self;
}

-(void) print
{
    NSLog(@"%i/%i",numerator,denominator);
}

/*-(id) init
{
    return [self initWith:0 over:0];
}
*/

@end

int gCounter;

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    Fraction *a,*b;
    
    a = [[Fraction alloc] initWith:1 over:3];
    b = [[Fraction alloc] initWith:5 over:6];
    
    [a print];
    [b print];
    
    NSLog(@"counter: %i", gCounter);
    
    [a release];
    [b release];

    [pool drain];
    return 0;
}

