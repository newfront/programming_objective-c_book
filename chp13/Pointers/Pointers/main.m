//
//  main.m
//  Pointers
//
//  Created by Scott Haines on 9/6/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

void exchange (int *pint1, int *pint2)
{
    int temp;
    temp = *pint1;
    *pint1 = *pint2;
    *pint2 = temp;
}

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    int count = 10, x;
    int *intPrt;
    
    intPrt = &count;
    x = *intPrt; // * is the address operator. This will use the pointer (intPrt) to access the value in memory stored in count.
    
    NSLog(@"count = %i, x= %i",count,x);
    
    
    struct date
    {
        int month;
        int day;
        int year;
    };
    
    struct date today, *datePtr;
    
    datePtr = &today;
    datePtr->month = 9;
    datePtr->day = 25;
    datePtr->year = 2011;
    
    NSLog(@"Today's date is %i/%i/%.2i.",
          datePtr->month,datePtr->day,datePtr->year % 100);
    
    // exchange values based on pointer to memory
    int i1 = 5, i2 = 66, *p1 = &i1, *p2 = &i2;
    
    NSLog(@"i1=%i, i2=%i",i1,i2);
    exchange(p1, p2);
    NSLog(@"i1=%i, i2=%i",i1,i2);
    exchange(&i1, &i2);
    NSLog(@"i1=%i, i2=%i",i1,i2);

    [pool drain];
    return 0;
}

