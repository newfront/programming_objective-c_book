//
//  main.m
//  blocks
//
//  Created by Scott Haines on 9/6/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int (^calculateTriangularNumber) (int) = ^(int n) {
    int i, triangularNumber = 0;
    
    for (i = 1; i <= n; ++i)
    {
        triangularNumber += i;
    }
    return triangularNumber;
};

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // block declaration
    void (^print_message)(void) = ^(void) {
        NSLog(@"Programming is fun.");
    };
    
    print_message();
    
    // call to predefined block
    NSLog(@"Triangular number %i is %i",10,calculateTriangularNumber(10));
    NSLog(@"Triangular number %i is %i",20,calculateTriangularNumber(20));
    NSLog(@"Triangular number %i is %i",50,calculateTriangularNumber(50));
    
    // use local variable inside of block
    
    // int foo = 10; // won't update value inside block
    __block int foo = 10; // will create a pointer to foo from within the block, you can update foo after the block has been defined and your golden
    
    void (^printFoo) (void) = ^(void) {
        // will be 10, since local variable at the time of the block's definition is 10
        NSLog(@"foo = %i", foo);
    };
    
    foo = 15;
    
    printFoo();

    [pool drain];
    return 0;
}

