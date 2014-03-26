//
//  main.m
//  ComputerName
//
//  Created by Sam Napolitano on 3/25/14.
//  Copyright (c) 2014 Sam Napolitano. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    
		// Set instance of NSHost
		NSHost *myHost = [NSHost currentHost];
		// Set string hostname from instance of NSHost
		NSString *hostname = [myHost localizedName];
		// Log that shnizzle
		NSLog(@"Your hostname is: %@", hostname);
		
	}
    return EXIT_SUCCESS;
}

