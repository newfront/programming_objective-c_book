//
//  main.m
//  Complex
//
//  Created by Scott Haines on 7/22/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject {
@private
    double real;
    double imaginary;
}
-(void) setReal:(double) a;
-(void) setImaginary:(double) b;
-(void) print;
-(double) real;
-(double) imaginary;
@end

@implementation Complex

-(void) setReal:(double) a
{
    real = a;
}
-(void) setImaginary:(double) b
{
    imaginary = b;
}
-(void) print
{
    NSLog(@"Complex Number: %f", real + imaginary);
}
-(double) real
{
    return real;
}
-(double) imaginary{
    return imaginary;
}

@end

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    Complex *c = [[Complex alloc] init];
    [c setReal:50.0];
    [c setImaginary:90.0];
    [c print];

    [pool drain];
    return 0;
}

