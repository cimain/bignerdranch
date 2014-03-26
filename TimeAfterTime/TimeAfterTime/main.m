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
	    
		NSDate *now = [NSDate date];
		NSLog(@"\nThis NSDate object lives at %p", now);
		NSLog(@"\nThe date is %@", now);
		
		double seconds = [now timeIntervalSince1970];
		
		NSLog(@"\nIt has been %f seconds since the start of 1970.", seconds);
		
	}
    return EXIT_SUCCESS;
}

