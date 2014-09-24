//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Samuel Napolitano on 4/16/14.
//  Copyright (c) 2014 Samuel Napolitano. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject
{
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

@property (nonatomic) NSString *symbol;

// Purchase Share price
- (float)purchaseSharePrice;
- (void)setPurchaseSharePrice:(float) price;
// Current Share Price
- (float)currentSharePrice;
- (void)setCurrentSharePrice:(float) price;
// Number of shares
- (int)numberOfShares;
- (void)setNumberOfShares:(int) shares;
// cost and value instance methods
- (float)costInDollars;
- (float)valueInDollars;

@end
