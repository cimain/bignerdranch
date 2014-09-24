//
//  main.m
//  Stockz
//
//  Created by Sam Napolitano on 5/21/14.
//  Copyright (c) 2014 Sam Napolitano. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    
		NSMutableArray *stocks = [NSMutableArray array];
		NSMutableDictionary *stock;
		
		stock = [NSMutableDictionary dictionary];
		[stock setObject:@"AAPL"
				  forKey:@"symbol"];
		[stock setObject:[NSNumber numberWithInt:200]
				  forKey:@"shares"];
		[stocks addObject:stock];
		
		stock = [NSMutableDictionary dictionary];
		[stock setObject:@"GOOG"
				  forKey:@"symbol"];
		[stock setObject:[NSNumber numberWithInt:160]
				  forKey:@"shares"];
		[stocks addObject:stock];
		
		[stocks writeToFile:@"/tmp/stocks.plist"
				 atomically:YES];
		
		NSArray *stockList = [NSArray arrayWithContentsOfFile:@"/tmp/stocks.plist"];
		for (NSDictionary *d in stockList) {
			NSLog(@"I have %@ shares of %@", [d objectForKey:@"shares"], [d objectForKey:@"symbol"]);
		}
		
		
	    // insert code here...
	    NSLog(@"Hello, World!");
	    
	}
    return 0;
}

