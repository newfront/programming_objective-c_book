//
//  main.m
//  polymorphism_complex_chp9
//
//  Created by Scott Haines on 7/28/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Complex : NSObject {
    double real;
    double imaginary;
}
@property double real,imaginary;

-(void) print;
-(void) setReal:(double) a andImaginary: (double) b;
-(Complex *) add: (Complex *) f;
@end

@implementation Complex
@synthesize real,imaginary;

-(void) print
{
    NSLog(@"%g + %gi ", real, imaginary);
}

-(void) setReal:(double) a andImaginary:(double)b
{
    real = a;
    imaginary = b;
}

-(Complex *) add:(Complex *) f
{
    Complex *result = [[Complex alloc] init];
    result.real = real + f.real;
    result.imaginary = imaginary + f.imaginary;
    
    return result;
}

@end

@interface Simple : NSObject {
@private
    int x;
}
@property int x;

-(void) setX:(int) value;
-(void) print;
@end

@implementation Simple
@synthesize x;

-(void) setX:(int) value
{
    x = value;
}

-(void) print
{
    NSLog(@"x is %i",x);
}

@end

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    Complex *c1 = [[Complex alloc] init];
    Complex *c2 = [[Complex alloc] init];
    Complex *compResult;
    
    id dataValue;
    
    Simple *s = [[Simple alloc] init];
    [s setX:90];
    
    [c1 setReal:18.0 andImaginary:2.5];
    [c2 setReal:-5.0 andImaginary:3.2];
    
    [c1 print]; NSLog(@" + "); [c2 print];
    
    // add and print 2 complex numbers
    
    NSLog(@"-----------");
    compResult = [c1 add:c2];
    [compResult print];
    NSLog(@"\n");
    
    dataValue = c1;
    NSLog(@"%@",[c1 class]);
    if([dataValue isKindOfClass:[Complex class]])
    {
        NSLog(@"dataValue is Complex");
        [dataValue print];
    }
    
    if ([s respondsToSelector:@selector(setX:)] == YES)
    {
        NSLog(@"dataValue can setX");
        [s setX:900];
        [s print];
    }
    else
    {
        NSLog(@"not sure what is wrong");
    }
    
    // try block
    @try
    {
        [dataValue setX:90];
    }
    @catch (NSException *exception)
    {
        NSLog(@"Caught %@%@",[exception name],[exception reason]);
    }
    NSLog(@"executiion continues");
    
    dataValue = s;
    [dataValue print];
    
    [c1 release];
    [c2 release];
    [s release];

    [pool drain];
    return 0;
}

