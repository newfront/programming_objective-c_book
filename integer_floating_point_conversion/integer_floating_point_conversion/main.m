//
//  main.m
//  integer_floating_point_conversion
//
//  Created by Scott Haines on 7/22/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    float f1 = 123.125, f2;
    int i1, i2 = -150;
    
    i1 = f1; //float to integer conversion
    NSLog(@"%f assigned to an int produces a %i", f1, i1); //123.125000 assigned to an int produces a 123
    
    f1 = i2; // integer to float conversion
    NSLog(@"%i assigned to a float produces %f", i2,f1); //-150 assigned to a float produces -150.000000
    
    f1 = i2/100; // integer divided by integer
    NSLog(@"%i divided by 100 produces %f",i2,f1); //-150 divided by 100 produces -1.000000
    
    // type casting is UNARY operator (occurs only during calculation)
    f2 = (float) i2 / 100; // type cast operator
    NSLog(@"(float) %i divided by 100 produces %f",i2,f2); //(float) -150 divided by 100 produces -1.500000
    

    [pool drain];
    return 0;
}

