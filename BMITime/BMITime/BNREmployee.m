//
//  BNREmployee.m
//  BMITime
//
//  Created by Sam Napolitano on 4/29/14.
//  Copyright (c) 2014 Samuel Napolitano. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

@interface BNREmployee ()
{
    NSMutableSet *_assets;
}
@property (nonatomic) unsigned int officeAlarmCode;

@end

@implementation BNREmployee

// Accessors for asset properties

- (void)setAssets:(NSArray *)a {
    _assets = [a mutableCopy];
}

- (NSArray *)assets {
    return [_assets copy];
}

- (void)addAsset:(BNRAsset *)a {
    // Is assets nil?
    if (!_assets) {
        // create the array
        _assets = [[NSMutableSet alloc] init];
    }
    [_assets addObject:a];
    a.holder = self;
}

- (void)removeAsset:(BNRAsset *)a {
    if(_assets){
        [_assets removeObject:a];
    }
}

- (unsigned int)valueOfAssets {
    // Sum up the resale value of the assets
    unsigned int sum = 0;
    for (BNRAsset *a in _assets) {
        sum += [a resaleValue];
    }
    return sum;
}

- (double) yearsOfEmployment {
	if( self.hireDate ) {
		NSDate *now = [NSDate date];
		NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
		return secs / 31557600.0;
	} else {
		return EXIT_SUCCESS;
	}
}

- (float) bodyMassIndex {
	//return 19.0;
	float normalBMI = [super bodyMassIndex];
	return normalBMI * 0.9;
}

- (NSString *) description {
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>", self.employeeID, self.valueOfAssets];
}

- (void) dealloc {
    NSLog(@"deallocating %@", self);
}


@end
