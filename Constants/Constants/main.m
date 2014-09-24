//
//  main.m
//  Constants
//
//  Created by Sam Napolitano on 5/19/14.
//  Copyright (c) 2014 Sam Napolitano. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    // insert code here...
	    NSLog(@"\u03c0 is %f", M_PI);
		NSLog(@"%d is Larger", MAX(7, 5));
		
		NSLocale *here = [NSLocale currentLocale];
		NSString *currency = [here objectForKey:NSLocaleCurrencyCode];
		NSLog(@"Money is %@", currency);
	}
    return 0;
}

