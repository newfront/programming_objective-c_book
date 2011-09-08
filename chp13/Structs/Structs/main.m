//
//  main.m
//  Structs
//
//  Created by Scott Haines on 9/6/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 Example used to pack data into predefined fields
*/
struct packedStruct
{
    unsigned int f1:1;
    unsigned int f2:1;
    unsigned int f3:1;
    unsigned int type:4;
    unsigned int index:9;
};

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    struct date
    {
        int month;
        int day;
        int year;
    };
    
    /*struct date today;
    
    today.month = 9;
    today.day = 25;
    today.year = 2011;
    */
    
    struct date today = { .month = 7, .day = 2, .year = 2011};
    
    NSLog(@"Today's date is %i/%i/%.2i.",today.month, today.day, today.year % 100);
    
    
    struct packedStruct packedData;
    packedData.type = 7;
    

    [pool drain];
    return 0;
}

