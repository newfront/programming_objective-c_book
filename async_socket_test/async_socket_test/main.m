//
//  main.m
//  async_socket_test
//
//  Created by Scott Haines on 7/26/11.
//  Copyright 2011 Convo Communications. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import "AsyncSocket.h"

/*
 AsyncSocket supports following Delegates
 1. Errors
 2. Connections
 3. Accepts
 4. Read Completions
 5. Write Completions
 6. Progress
 7. Disconnection
*/

@interface ConductorConnector : NSObject {
@private
    AsyncSocket *socket;
    BOOL isRunning;
}

@property (readwrite, assign) BOOL isRunning;

-(id) init;
-(void) connectToHost:(NSString *) hostName onPort:(int) port;
-(void) sendMessage:(NSString *) message;
-(void) disconnect;
-(void) dealloc;

@end

@implementation ConductorConnector

@synthesize isRunning;

-(id) init
{
    if (!(self = [super init]))
        return nil;
    socket = [[AsyncSocket alloc] initWithDelegate:self];
    [self setIsRunning:NO];
    return self;
}

-(void) connectToHost:(NSString *) hostName onPort:(int) port
{
    if (![self isRunning])
    {
        if(port < 0 || port > 65535)
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
        NSLog(@"Connection established");
    }
}

-(void) sendMessage:(NSString *)message
{
    NSLog(@"send the following message: %@", message);
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

#pragma mark AsyncSocket Delegate 

-(void) onSocket:(AsyncSocket *) sock didReadData:(NSData *) data withTag:(long) tag
{
    NSLog(@"message on socket");
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
    [sock readDataToData:[AsyncSocket LFData] withTimeout: -1 tag:0];
}

@end

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    ConductorConnector *conductor = [[ConductorConnector alloc] init];
    [conductor connectToHost:@"http://google.com" onPort:80];
    
    [pool drain];
    return 0;
}

