//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Samuel Napolitano on 4/16/14.
//  Copyright (c) 2014 Samuel Napolitano. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float)purchaseSharePrice {
    return _purchaseSharePrice;
}

- (void)setPurchaseSharePrice:(float)price {
    _purchaseSharePrice = price;
}

- (float)currentSharePrice {
    return _currentSharePrice;
}

-(void)setCurrentSharePrice:(float)price {
    _currentSharePrice = price;
}

- (int)numberOfShares {
    return _numberOfShares;
}

- (void)setNumberOfShares:(int)shares {
    _numberOfShares = shares;
}

- (float)costInDollars {
    return [self purchaseSharePrice] * [self numberOfShares];
}

- (float)valueInDollars {
    return [self currentSharePrice] * [self numberOfShares];
}

@end
