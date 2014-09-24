//
//  BNRLogger.m
//  Callbacks
//
//  Created by Samuel Napolitano on 5/21/14.
//  Copyright (c) 2014 Samuel Napolitano. All rights reserved.
//

#import "BNRLogger.h"

@implementation BNRLogger

-(void)zoneChange:(NSNotification *)note{
    NSLog(@"The system time zone has changed!");
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    
    //Called each time some chunk of data arrives
    NSLog(@"Received %lu butes", [data length]);
    
    // Create a nutable data if it doesn not exist
    if(!_incomingData){
        _incomingData = [[NSMutableData alloc]init];
    }
    [_incomingData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    
    // Called when the last chunk has been processed
    NSLog(@"Got it all");
    NSString *string = [[NSString alloc]initWithData:_incomingData
                                            encoding:NSUTF8StringEncoding];
    _incomingData = nil;
    NSLog(@"string has %lu characters", [string length]);
    
    // Uncomment the next line to see the entire fetched line
    // NSLog(@"The whole string is\n %@", string);
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    // Called if the fetch fails
    NSLog(@"connection failed: %@", [error localizedDescription]);
    _incomingData = nil;
}

- (NSString *)lastTimeString{
    static NSDateFormatter *dateFormatter = nil;
    if(!dateFormatter){
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"Created dateFormatter");
    }
    
    return [dateFormatter stringFromDate:self.lastTime];
}

- (void)updateLastTime:(NSTimer *)t{
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"Just set time to %@", self.lastTimeString);
}

@end
