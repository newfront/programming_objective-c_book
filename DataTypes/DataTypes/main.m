//
//  main.m
//  DataTypes
//
//  Created by Scott Haines on 7/22/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    int integerVar = 100;
    float floatingVar = 331.79;
    double doubleVar = 8.44e+11;
    char charVar = 'W';
    
    /*
     long int = 32 bits wide (2e31 - 1, or 2,147,483,647) escape in string with %li (long int), %lo (long octal), %lx (long hex)
     long long int = 64 bit wide : escape with %lli, %llo, %llx
     */
    
    NSLog(@"integerVar: %i",integerVar);
    NSLog(@"floatingVar: %f", floatingVar);
    NSLog(@"doubleVar: %e", doubleVar); // double is 'e' think exponent
    NSLog(@"charVar: %c", charVar);
    
    int a = 100;
    int b = 2;
    int c = 25;
    int d = 4;
    int result;
    
    result = a - b; //subtraction
    NSLog(@"result: (a-b) %i",result);
    
    result = b * c; // multiplication
    NSLog(@"result: (b*c) %i",result);
    
    result = a / c; // division
    NSLog(@"result:(a/c) %i",result);
    
    result = a + b * c; //precedence
    NSLog(@"a + b * c = %i",result);
    
    NSLog(@"a * b + c * d = %i",a * b + c * d);
    
    // Integer Arithmetic and the Unary Minus Operator
    int aa = 25;
    int bb = 2;
    float cc = 25.0;
    float dd = 2.0;
    
    NSLog(@"6 + aa / 5 * bb = %i",6+aa/5*bb);
    NSLog(@"aa / bb * bb = %i",aa/bb*bb);
    NSLog(@"cc / dd * dd = %f", cc/dd*dd);
    NSLog(@"-aa = %i",-aa);
    
    // Modulus Operator (only works with Integer)
    
    NSLog(@"aa %% bb = %i",aa % bb);
    NSLog(@"a %% c = %i", a % c);
    NSLog(@"a / d * d + a %% dd = %i", a / d * d + a % d);
    
    
    [pool drain];
    return 0;
}

