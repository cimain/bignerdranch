//
//  main.m
//  SecondsAlive
//
//  Created by Sam Napolitano on 3/25/14.
//  Copyright (c) 2014 Sam Napolitano. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

	@autoreleasepool {
		
		NSDateComponents *birthday = [[NSDateComponents alloc] init];
		[birthday setYear:1982];
		[birthday setMonth:1];
		[birthday setDay:26];
		[birthday setHour:6];
		[birthday setMinute:2];
		[birthday setSecond:0];
		
		NSCalendar *cal = [[NSCalendar alloc]initWithCalendarIdentifier:NSGregorianCalendar];
		NSDate *dateOfBirth = [cal dateFromComponents:birthday];
		NSDate *now = [NSDate date];
		float seconds = [now timeIntervalSinceDate:dateOfBirth];
		NSLog(@"Its been %f seconds since your birthday", seconds);
		
	}
    return EXIT_SUCCESS;
}

