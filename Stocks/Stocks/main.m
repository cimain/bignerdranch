//
//  main.m
//  Stocks
//
//  Created by Samuel Napolitano on 4/16/14.
//  Copyright (c) 2014 Samuel Napolitano. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSArray *holdings = [NSArray array];
        
		// Im not sure this is best, but it creates a random dynamic array of values.
        for (int n = 0; n < 3; n++) {
            BNRStockHolding *holding = [[BNRStockHolding alloc] init];
            [holding setNumberOfShares:(int)arc4random_uniform(500)];
            [holding setPurchaseSharePrice:((float)arc4random() / RAND_MAX) * 10];
            [holding setCurrentSharePrice:((float)arc4random() / RAND_MAX) * 10];
            holdings = [holdings arrayByAddingObject:holding];
        }
		
		// Fast enumeration through the array of BNRStockHolding objects
		for (BNRStockHolding *n in holdings) {
			float purchase = [n purchaseSharePrice];
			float current = [n currentSharePrice];
            float cost = [n costInDollars];
            float value = [n valueInDollars];
			int shares = [n numberOfShares];
            NSLog(@"%d shares purchased at %.2f each was %.2f, the value is %.2f at %.2f per share", shares, purchase, cost, value, current);
        }

    }
    return EXIT_SUCCESS;
}

