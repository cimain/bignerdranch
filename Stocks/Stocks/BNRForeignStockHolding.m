//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by Sam Napolitano on 4/29/14.
//  Copyright (c) 2014 Samuel Napolitano. All rights reserved.
//

#import "BNRForeignStockHolding.h"
#import "BNRStockHolding.h"

@implementation BNRForeignStockHolding

- (float)costInDollars {
    return ([self purchaseSharePrice] * [self numberOfShares]) * [self conversionRate];
}

- (float)valueInDollars {
    return ([self currentSharePrice] * [self numberOfShares]) * [self conversionRate];
}

@end
