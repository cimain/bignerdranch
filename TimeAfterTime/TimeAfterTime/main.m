//
//  main.m
//  TimeAfterTime
//
//  Created by Sam Napolitano on 3/25/14.
//  Copyright (c) 2014 Sam Napolitano. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    
		NSDate *now = [[NSDate alloc] init];
		NSLog(@"\nThis NSDate object lives at %p", now);
		NSLog(@"\nThe date is %@", now);
		
		double seconds = [now timeIntervalSince1970];
		
		NSLog(@"\nIt has been %f seconds since the start of 1970.", seconds);
		
		NSDate *later = [now dateByAddingTimeInterval:100000];
		NSLog(@"In 100,000 seconds it will be %@", later);
		
		NSCalendar *cal = [NSCalendar currentCalendar];
		NSLog(@"My Calendar is %@", [cal calendarIdentifier]);
		
		unsigned long day = [cal ordinalityOfUnit:NSDayCalendarUnit
										   inUnit:NSMonthCalendarUnit
										  forDate:now];
		NSLog(@"This is day %lu of the month",day);
		
	}
    return EXIT_SUCCESS;
}

