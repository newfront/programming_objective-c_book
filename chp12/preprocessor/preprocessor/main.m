//
//  main.m
//  preprocessor
//
//  Created by Scott Haines on 7/28/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

#define PASSED 1;
#define ERROR 0;

#define IS_LEAP_YEAR year % 4 == 0 && year % 100 !=0 || year % 400 == 0

#define ADD(a,b) a + b

#ifdef IPAD
#define kImageFile @"barnHD.png"
#else
#define kImageFile @"barn.png"
#endif

#define MIN2(a,b) ((a) < (b)) ? YES : NO
#define MAX2(a,b) ((a) > (b)) ? (a) : (b)

#define MAX3(a,b,c) MAX2((MAX2(a,b)),(MAX2(b,c))) 

/*
#undef : kills a definition
 
#if defined (IPAD) && IPAD
 ...
#endif
*/

void (^printMessage)(void) = 
^(void){
    NSLog(@"Programming is Fun!");
};

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    int p,f;
    int year;
    int max;
    
    p = PASSED;
    f = ERROR;
    
    if(p == 1)
    {
        NSLog(@"Passed");
    }
    
    year = 2010;
    
    if (IS_LEAP_YEAR)
    {
        NSLog(@"define helped make this look nice, and we have a leap year");
    }
    else
    {
        NSLog(@"defined still helped this look nice, but its not a leap year");
    }
    
    f = ADD(3,4);
    //p = 100;
    
    if(MIN(p,f) == YES)
    {
        NSLog(@"%i < %i",p,f);
    }
    else
    {
        NSLog(@"%i > %i",p,f);
    }
    
    NSLog(@"value: %i",f);
    
    NSLog(@"100 or 400 greater? %i", MAX2(100,400));
    NSLog(@"900 or 400 greater? %i", MAX2(900,400));
    max = MAX3(90, 120, 450);
    
    NSLog(@"SIZEOF(max): %g",sizeof(max));
    
    // greater : 90, 120 = 120
    // greater : 120, 450 = 450
    // greater : 120, 450 = 450
    
    NSLog(@"max: %i", max);
    
    // call a block
    // like Scala syntax
    printMessage();
    
    
    NSLog(@"image: %@", kImageFile);

    [pool drain];
    return 0;
}

