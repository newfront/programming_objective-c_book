//
//  main.m
//  AsyncSocket
//
//  Created by Scott Haines on 7/26/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString * const kNotification;
extern NSString * const kNotificationMessage;

@class AsyncSocket;

@interface SocketCommunicationManager : NSObject {
@private
    AsyncSocket *socket;
    BOOL isRunning;
    NSNotificationCenter *notificationCenter;
}

@property (readwrite, assign) BOOL isRunning;

-(void) connectToHost:(NSString*) hostName onPort:(int) port;
-(void) sendMessage:(NSString *) message;
-(void) disconnect;
@end

@implementation SocketCommunicationManager

@synthesize isRunning;

-(id) init 
{
    if (!(self = [super init]))
        return nil;
    
    socket = [[AsyncSocket alloc] initWithDelegate:self];
    [self isRunning:NO];
    notificationCenter = [NSNotificationCenter defaultCenter];
    
    return self;
}

-(void) connectToHost:(NSString *)hostName onPort:(int)port
{
    if (![self isRunning])
    {
        if (port < 0 || port > 65535)
            port = 0;
    
        NSError *error = nil;
    
        if(![socket connectToHost:hostName onPort:port error:&error])
        {
            NSLog(@"Error connecting to server: %@", error);
            return;
        }
        [self setIsRunning:YES];
    }
    else
    {
        [socket disconnect];
        [self setIsRunning:NO];
    }
}

-(void) disconnect
{
    [socket disconnect];
}

-(void) dealloc
{
    [super dealloc];
    [socket disconnect];
    [socket dealloc];
}

-(void) sendMessage:(NSString *)message
{
    NSString *terminatedMessage = [message stringByAppendingString:@"\r\n"];
    NSData *terminatedMessageData = [terminatedMessage dataUsingEncoding:NSASCIIStringEncoding];
    [socket writeData:terminatedMessageData withTimeout:-1 tag:0];
}

#pragma mark AsyncSocket Delegate

-(void) onSocket:(AsyncSocket *) sock didReadData:(NSData *) data withTag:(long) tag
{
    NSData *truncatedData = [data subdataWithRange:NSMakeRange(0,[data length] -1)];
    NSString *message = [[[NSString alloc] initWithData:truncatedData encoding:NSASCIIStringEncoding] autorelease];
    if(message)
    {
        NSLog(@"%@", message);
    }
    else
    {
        NSLog(@"Error converting received data into UTF-8 String");
    }
    
    NSDictionary *userInfo = [NSDictionary dictionaryWithObject:message forKey:kNotificationMessage];
    [notificationCenter postNotification:kNotification object:self userInfo:userInfo];
    
    [sock readDataToData:[AsyncSocket LFData] withTimeout: -1 tag:0];
}

@end

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
    NSLog(@"Hello, World!");

    [pool drain];
    return 0;
}

