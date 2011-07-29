//
//  main.m
//  switch_statment_6
//
//  Created by Scott Haines on 7/25/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    double value1, value2;
    char operator;
    
    Calculator *deskCalc = [[Calculator alloc] init];
    
    NSLog(@"Please enter an expression to evaluate: ");
    scanf("%lf %c %lf",&value1, &operator, &value2);
    
    [deskCalc setAccumulator:value1];
    
    switch (operator)
    {
        case '+':
            [deskCalc add:value2];
            break;
        case '-':
            [deskCalc subtract:value2];
            break;
        case '*':
            [deskCalc multiply:value2];
            break;
        case '/':
            [deskCalc divide:value2];
            break;
        default:
            NSLog(@"Unknown Operator.");
            break;
    }
    
    NSLog(@"%.2f", [deskCalc accumulator]);
    [deskCalc release];

    [pool drain];
    return 0;
}

