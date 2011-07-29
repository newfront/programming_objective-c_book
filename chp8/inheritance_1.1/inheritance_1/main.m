//
//  main.m
//  inheritance_1
//
//  Created by Scott Haines on 7/28/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassA : NSObject {
    int x;
}
-(void) initVar;
@end

@implementation ClassA

-(void) initVar
{
    x = 100;
}

@end

@interface ClassB : ClassA {
@private
    
}
-(void) printVar;
@end

@implementation ClassB

-(void) printVar
{
    NSLog(@"initVar : %i", x);
}

@end

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    ClassB *b = [[ClassB alloc] init];
    
    [b initVar];
    [b printVar];
    
    [b release];

    [pool drain];
    return 0;
}

