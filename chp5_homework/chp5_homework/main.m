//
//  main.m
//  chp5_homework
//
//  Created by Scott Haines on 7/22/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    /*
     # 1: Create a program to generate a table of n and n**2, for n from 0 to 10
     */
    /*
    int n;
    
    NSLog(@"TABLE FOR n and n**2");
    NSLog(@"-- --");
    for(n=0;n<=10;++n)
    {
        NSLog(@"%i : %i",n,n*n);
    }
    */
    
    /*
     #2: triangularNumber: generate with n (n + 1) / 2
     Generate every 5th triangularNumber using said formula
     */
    /*int n, triangularNumber;
    
    for(n=5;n<=50;n += 5)
    {
        
            triangularNumber = 0;
            triangularNumber = n*(n+1)/2;
            NSLog(@"triangularNumber for %i is %i",n,triangularNumber);
        
    }
    */
    
    /*
     #3: factorial of n, written n!, is the product of the consecutive integers 1 through n.
     Create a program to generate and print a table of the first 10 factorials
    */
    /*int n,j,number;
    
    for(n=1;n<=10;++n)
    {
        number = 1;
        for(j=1;j<=n;++j)
        {
            number *= j;
        }
        NSLog(@"Factorial for %i  %i", n, number);
    }
    */
    
    /*
     #4: NSLog(@"%-2i %i",n,triangularNumber) - makes left justified
    */
    /*int n,triangularNumber;
    
    for(n=0;n<=10;++n)
    {
        triangularNumber = 0;
        triangularNumber = n*(n+1)/2;
        NSLog(@"%i %i",n,triangularNumber);
        NSLog(@"%-2i %i",n,triangularNumber); // just justifies output, nice for double digits
    }
    */
    
    /*
     #5: Allow user to specify the number of triangular numbers to calculate, and the range
    */
    
    /*int tri_number_cap, n, triangularNumber;
    
    NSLog(@"Give me a number to calculatre the triangular numbers upto:");
    scanf("%i",&tri_number_cap);
    
    // fix for negative number. absolute value
    for(n=0;n<=abs(tri_number_cap);++n)
    {
        triangularNumber = 0;
        triangularNumber = n*(n+1)/2;
        NSLog(@"%-2i %i",n,triangularNumber);
    }
    */
    
    /*
     #8. Write a program to calculate the sum of the digits of an arbitrary, user defined number
    */
    
    /*int number, sum = 0;
    
    NSLog(@"Type in a positive integer");
    scanf("%i", &number);
    while(number != 0)
    {
        NSLog(@"number: %i",number);
        sum += number % 10;
        number /= 10;
    }
    NSLog(@"sum: %i",sum);
    */
    
    [pool drain];
    return 0;
}

