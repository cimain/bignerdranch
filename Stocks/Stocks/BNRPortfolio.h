//
//  BNRPortfolio.h
//  Stocks
//
//  Created by Samuel Napolitano on 5/14/14.
//  Copyright (c) 2014 Samuel Napolitano. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRStockHolding;

@interface BNRPortfolio : NSObject

@property (nonatomic, copy) NSArray *holdings;
- (float)totalValue;
- (void)addHolding:(BNRStockHolding *)stockHolding;
- (void)removeHolding:(BNRStockHolding *)a;
- (NSArray *)topHoldings;

@end
