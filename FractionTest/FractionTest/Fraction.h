//
//  Fraction.h
//  FractionTest
//
//  Created by Scott Haines on 7/25/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Fraction : NSObject {
@private
    int numerator;
    int denominator;
}

-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;

-(void) print;

-(int) numerator;
-(int) denominator;

@end
