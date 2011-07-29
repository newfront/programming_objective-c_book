//
//  XYPoint.m
//  Rectangle
//
//  Created by Scott Haines on 7/28/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import "XYPoint.h"


@implementation XYPoint

@synthesize x,y;

-(void) setX: (int) xVal andY: (int) yVal
{
    x = xVal;
    y = yVal;
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
