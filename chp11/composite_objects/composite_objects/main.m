//
//  main.m
//  composite_objects
//
//  Created by Scott Haines on 7/28/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Simple : NSObject {
    int x;
    int y;
}
@property int x,y;

-(void) setX:(int) xVal andSetY:(int) yVal;
-(void) print;
@end

@implementation Simple
@synthesize x,y;

-(void) setX:(int)xVal andSetY:(int)yVal
{
    x = xVal;
    y = yVal;
}

-(void) print
{
    NSLog(@"x:%i, y:%i", x,y);
}

@end

@interface Simpler : NSObject {
    Simple *s;
}
-(id) initWithObject:(Simple *) simple;
-(void) print;
@end

@implementation Simpler

-(id) initWithObject:(Simple *)simple
{
    self = [super init];
    
    if(self)
    {
        s = simple;
    }
    
    return self;
}

-(void) print
{
    [s print];
}

@end

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    Simple *s = [[Simple alloc] init];
    Simpler *sr;
    
    [s setX:90 andSetY:200];
    
    sr = [[Simpler alloc] initWithObject:s];
    
    [s print];
    [sr print];
    
    [s setX:50 andSetY:900];
    
    [s print];
    [sr print];
    
    [s release];
    [sr release];

    [pool drain];
    return 0;
}

