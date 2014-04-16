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
        
        for (int n = 0; n < 3; n++) {
            BNRStockHolding *holding = [[BNRStockHolding alloc] init];
            [holding setNumberOfShares:(int)arc4random_uniform(100)];
            [holding setPurchaseSharePrice:((float)rand() / RAND_MAX) * 100];
            [holding setCurrentSharePrice:((float)rand() / RAND_MAX) * 100];
            holdings = [holdings arrayByAddingObject:holding];
        }
        for (BNRStockHolding *n in holdings) {
            float cost = [n costInDollars];
            float value = [n valueInDollars];
            NSLog(@"%d", [n numberOfShares]);
            NSLog(@"The Cost of the first holding is %.2f, the value is %.2f", cost, value);
        }

    }
    return 0;
}

