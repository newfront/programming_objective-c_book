//
//  Square.m
//  Rectangle
//
//  Created by Scott Haines on 7/28/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import "Square.h"


@implementation Square: Rectangle

-(void) setSide:(int) s
{
    [self setWidth:s andHeight:s];
}

-(int) side
{
    return width;
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
