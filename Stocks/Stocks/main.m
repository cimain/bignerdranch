//
//  main.m
//  Stocks
//
//  Created by Samuel Napolitano on 4/16/14.
//  Copyright (c) 2014 Samuel Napolitano. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        BNRPortfolio *portfolio = [[BNRPortfolio alloc] init];
        
		// Im not sure this is best, but it creates a random dynamic array of values.
        for (int n = 0; n < 5; n++) {
            BNRStockHolding *holding = [[BNRStockHolding alloc] init];
            [holding setNumberOfShares:(int)arc4random_uniform(500)];
            [holding setPurchaseSharePrice:((float)arc4random() / RAND_MAX) * 10];
            [holding setCurrentSharePrice:((float)arc4random() / RAND_MAX) * 10];
            [portfolio addHolding:holding];
        }
	
		// Fast enumeration through the array of BNRStockHolding objects
		for (BNRStockHolding *n in portfolio.holdings) {
			float purchase = [n purchaseSharePrice];
			float current = [n currentSharePrice];
            float cost = [n costInDollars];
            float value = [n valueInDollars];
			int shares = [n numberOfShares];
            NSLog(@"%d shares purchased at %.2f each was %.2f, the value is %.2f at %.2f per share", shares, purchase, cost, value, current);
        }
        
        NSLog(@"Total value is, %.02f", [portfolio totalValue]);
		
		NSArray *foreignHoldings = [NSArray array];
        
		// Im not sure this is best, but it creates a random dynamic array of values.
        for (int n = 0; n < 3; n++) {
            BNRForeignStockHolding *holding = [[BNRForeignStockHolding alloc] init];
            [holding setNumberOfShares:(int)arc4random_uniform(500)];
            [holding setPurchaseSharePrice:((float)arc4random() / RAND_MAX) * 10];
            [holding setCurrentSharePrice:((float)arc4random() / RAND_MAX) * 10];
			holding.conversionRate = ((float)arc4random() /RAND_MAX) * .1;
            foreignHoldings = [foreignHoldings arrayByAddingObject:holding];
        }
		
		// Fast enumeration through the array of BNRStockHolding objects
		for (BNRForeignStockHolding *n in foreignHoldings) {
			float purchase = [n purchaseSharePrice];
			float current = [n currentSharePrice];
            float cost = [n costInDollars];
            float value = [n valueInDollars];
			int shares = [n numberOfShares];
			float conversionRate = n.conversionRate;
            NSLog(@"%d shares purchased at %.2f each was %.2f, the value is %.2f at %.2f per share, the converstion rate is %.2f",
				  shares, purchase, cost, value, current, conversionRate);
        }
		
		for (BNRStockHolding *holding in [portfolio topHoldings]) {
			NSLog(@"Top Holdings: %.02f", holding.valueInDollars);
		}
		

    }
    return EXIT_SUCCESS;
}

