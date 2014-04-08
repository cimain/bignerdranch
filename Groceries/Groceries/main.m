//
//  main.m
//  Groceries
//
//  Created by Samuel Napolitano on 4/7/14.
//  Copyright (c) 2014 Samuel Napolitano. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *myList = [NSMutableArray array];
        
        NSString *bread = @"Bread";
        NSString *milk = @"Milk";
        NSString *diapers = @"Diapers";
        
        [myList addObject:bread];
        [myList addObject:milk];
        [myList addObject:diapers];
        
        NSLog(@"Groceries (mutable): \n");
        for (NSString *g in myList) {
            NSLog(@"Item: %@ \n", g);
        }
        
        // Now lets do the same without the mutable
        NSLog(@"Groceries: \n");
        NSArray *groceries = @[@"Bread", @"Milk", @"Diapers"];
        for (NSString *g in groceries) {
            NSLog(@"Item: %@ \n", g);
        }
        
    }
    
    return EXIT_SUCCESS;

}

