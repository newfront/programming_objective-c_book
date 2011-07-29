//
//  main.m
//  bitwise_operators
//
//  Created by Scott Haines on 7/22/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    unsigned int w1 = 0xA0A0A0A0, w2 = 0xFFFF0000, w3 = 0x00007777;
    
    NSLog(@"%x %x %x",w1 & w2, w1 | w2, w1 ^ w2); // AND, OR, XOR (a0a00000 ffffa0a0 5f5fa0a0)
    NSLog(@"%x %x %x",~w1,~w2,~w3); // flip operator (bitwise flipping) (5f5f5f5f ffff ffff8888)
    NSLog(@"%x %x %x", w1 ^ w1, w1 & ~w2, w1 | w2 | w3); // w1 xor w1, w1 AND flip bits for w2, w1 OR w2 OR w3 (0 a0a0 fffff7f7)
    NSLog(@"%x %x", w1 | w2 & w3, w1 | w2 & ~w3); //a0a0a0a0 ffffa0a0
    NSLog(@"%x %x", ~(~w1 & ~w2),~(~w1 | ~w2)); //ffffa0a0 a0a00000
    
    NSLog(@"%x", w1 + w2); //a09fa0a0
    
    // LEFT SHIFT OPERATOR
    // << (bits are literally shifted to the left)
    
    unsigned int w4 = 0xFEFEFEFE;
    // could be used to read all color values in rgb file (as hex, and shift colors)
    NSLog(@"%x %x", w4, w4 <<= 1); //fefefefe fdfdfdfc
    
    // RIGHT SHIFT OPERATOR (can't shift by more than 32 bits for unsigned int... 64 for long 
    unsigned int w5 = 0xFFFFFFFF;
    NSLog(@"%x %x",w5,w5 >>= 1); //ffffffff 7fffffff
    NSLog(@"%x %x",w5,w5 >>= 9); //7fffffff 3fffff

    [pool drain];
    return 0;
}

