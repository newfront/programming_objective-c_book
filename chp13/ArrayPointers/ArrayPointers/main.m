//
//  main.m
//  ArrayPointers
//
//  Created by Scott Haines on 9/6/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>


int arraySum(int array[], int n)
{
    int sum = 0, *ptr;
    
    int *arrayEnd = array + n;
    
    for ( ptr = array; ptr < arrayEnd; ++ptr)
    {
        sum += *ptr;
    }
    return (sum);
}

// copy string (using pointers)

void copyString(char *to, char *from)
{
    for(; *from != '\0'; ++from, ++to)
    {
        *to = *from;
    }
    *to = '\0';
}

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    //int arraySum (int array[], int n);
    int values[10] = {3,7,-9,3,6,-1,7,9,1,-5};
    
    NSLog(@"The sum is %i", arraySum(values, 10));
    
    void copyString (char *to, char *from);
    
    char string1[] = "A string to be copied.";
    char string2[50];
    
    copyString(string2, string1);
    
    NSLog(@"%s",string2);
    
    copyString(string2,"So is this.");
    NSLog(@"%s", string2);
    
    int j = 20;
    // increment after
    NSLog(@"%i", j++);
    j = 20;
    // increment before
    NSLog(@"%i",++j);

    [pool drain];
    return 0;
}

