//
//  main.m
//  calculator_take_two_6
//
//  Created by Scott Haines on 7/25/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>


int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    double value1, value2;
    char operator;
    Calculator *deskCalc = [[Calculator alloc] init];
    
    NSLog(@"Type in your expression");
    scanf("%lf %c %lf", &value1, &operator, &value2);
    
    [deskCalc setAccumulator:value1];
    if(operator == '+')
        [deskCalc add:value2];
    else if(operator == '-')
        [deskCalc subtract:value2];
    else if (operator == '/')
        if (value2 == 0)
            NSLog(@"No division by zero");
        else
            [deskCalc divide:value2];
    else if (operator == '*')
        [deskCalc multiply:value2];
    
    NSLog(@"%.2f", [deskCalc accumulator]);
    [deskCalc release];

    [pool drain];
    return 0;
}

