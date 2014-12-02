//
//  main.m
//  RandomItems
//
//  Created by Sam Napolitano on 6/28/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"


int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    
		NSMutableArray *items = [[NSMutableArray alloc] init];

        BNRItem *backpack = [[BNRItem alloc] initWithItemName:@"Backpack"];
        [items addObject:backpack];
        
        BNRItem *calculator = [[BNRItem alloc] initWithItemName:@"Calculator"];
        [items addObject:calculator];
        
        backpack.containedItem = calculator;
        
        backpack = nil;
        calculator = nil;
        
        
//        for (int i = 0; i < 10; i++) {
//            BNRItem *item = [BNRItem randomItem];
//            [items addObject:item];
//        }
        
//        id lastObj = [items lastObject];
//        // Exception test
//        [lastObj count];
//        Another exception sample
//        BNRItem *eleven = items[11];
        
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        
        
//		// Add items one by one, typically a loop would do it this way
//		// I'd prefer to do it in one shot
//		[items addObject:@"one"];
//		[items addObject:@"two"];
//		[items addObject:@"four"];
//		
//		// Practice adding one at index of array
//		[items insertObject:@"three" atIndex:2];
//		
//		// log the array
//		NSLog(@"Items: %@", items);
//		
//		// Log each item with fast enum
//		for (NSString *item in items) {
//			NSLog(@"%@", item);
//		}
//		
//        BNRItem *item = [[BNRItem alloc] initWithItemName:@"Red Sofa" valueInDollars:100 serialNumber:@"abc123"];
//		
//		// NSLog(@"%@, %@, %d, %@", item.itemName, item.serialNumber, item.valueInDollars, item.dateCreated);
//		NSLog(@"%@", item);
//        
//        BNRItem *itemWithName = [[BNRItem alloc] initWithItemName:@"Blue Sofa"];
//        NSLog(@"%@", itemWithName);
//        BNRItem *itemWithNoName = [[BNRItem alloc] init];
//        NSLog(@"%@", itemWithNoName);
		
		//Kill the array
        NSLog(@"Setting Items to nil...");
		items = nil;
	}
    return 0;
}

