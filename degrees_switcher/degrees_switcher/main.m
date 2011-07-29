//
//  main.m
//  degrees_switcher
//
//  Created by Scott Haines on 7/22/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Foundation/NSString.h>

@interface Temperature : NSObject {
@private
    double temperature;
    NSString *type;
}
// set temperature
-(void) setTemperature:(double) temp;
// switch return type value ('f','c')
-(void) setType:(NSString *) t;
// return temp
-(NSString *) getType;
-(double) current;
@end

@implementation Temperature

-(void) setTemperature:(double) temp
{
    temperature = temp;
}

-(void) setType:(NSString *) t
{
    if([t isEqualToString:@"f"])
    {
        NSLog(@"Type is Fahrenheit");
        type = @"f";
    }
    else if([t isEqualToString:@"c"])
    {
        NSLog(@"Type is Celcius");
        type = @"c";
    }
}

-(NSString *) getType
{
    return type;
}

-(double) current
{
    if([type isNotEqualTo:@"f"] && [type isNotEqualTo:@"c"])
    {
        [self setType:@"f"];
    }
    
    if([type isEqualTo:@"c"])
    {
        return (temperature - 32) / 1.8;
    }
    return (double) temperature;
}

@end

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // Calculate the Temperature
    Temperature *temp = [[Temperature alloc] init];
    [temp setTemperature:99.0];
    [temp setType:@"c"];
    NSLog(@"temperature in %@ is %f",[temp getType],[temp current]);
    
    [temp setType:@"f"];
    NSLog(@"temperature in %@ is %f",[temp getType],[temp current]);

    [pool drain];
    return 0;
}

