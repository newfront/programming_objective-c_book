//
//  Rectangle.m
//  Rectangle
//
//  Created by Scott Haines on 7/28/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import "Rectangle.h"
#import "XYPoint.h"


@implementation Rectangle
@synthesize width;
@synthesize height;

-(XYPoint *) origin
{
    return origin;
}

-(void) setOrigin:(XYPoint *)pt
{
    if(!origin)
    {
        origin = [[XYPoint alloc] init];
        origin.x = pt.x;
        origin.y = pt.y;
    }
}

-(void) setWidth: (int) w andHeight: (int) h
{
    width = w;
    height = h;
}

-(int) area
{
    return width * height;
}

-(int) perimeter
{
    return (width + height) * 2;
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
    if(origin)
    {
        [origin release];
    }
    [super dealloc];
}

@end
