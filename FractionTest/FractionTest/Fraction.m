//
//  Fraction.m
//  FractionTest
//
//  Created by Scott Haines on 7/25/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import "Fraction.h"


@implementation Fraction


-(void) setNumerator: (int) n
{
    numerator = n;
}
-(void) setDenominator: (int) d
{
    denominator = d;
}

-(void) print
{
    NSLog(@"%i/%i",numerator,denominator);
}

-(int) numerator
{
    return numerator;
}
-(int) denominator
{
    return denominator;
}

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

@end
