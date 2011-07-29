//
//  XYPoint.h
//  Rectangle
//
//  Created by Scott Haines on 7/28/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface XYPoint : NSObject {
    int x;
    int y;
}
@property int x,y;

-(void) setX: (int) xVal andY: (int) yVal;

@end
