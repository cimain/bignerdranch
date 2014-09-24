//
//  BNRPortfolio.m
//  Stocks
//
//  Created by Samuel Napolitano on 5/14/14.
//  Copyright (c) 2014 Samuel Napolitano. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"

@interface BNRPortfolio ()
{
    NSMutableArray *_holdings;
}

@property(strong, nonatomic) NSMutableArray* holdings;

@end

@implementation BNRPortfolio


- (NSArray *) holdings{
    return [_holdings copy];
}

- (float) totalValue {
    float value = 0.00;
    for (BNRStockHolding *s in _holdings) {
        value += s.valueInDollars;
    }
    return value;
}

-(void)addHolding:(BNRStockHolding*)stockHolding {
    if(!self.holdings){
        self.holdings = [[NSMutableArray alloc] init];
    }
    [self.holdings addObject:stockHolding];
}

-(void)removeHolding:(BNRStockHolding *)a {
    if(_holdings){
        [_holdings removeObject:a];
    }
}

-(NSArray *) topHoldings {
    NSSortDescriptor *value = [NSSortDescriptor sortDescriptorWithKey:@"valueInDollars"
                                                            ascending:NO];
    [_holdings sortUsingDescriptors:@[value]];
	NSIndexSet *indexes = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, 3)];

    return [_holdings objectsAtIndexes:indexes];
}

@end
