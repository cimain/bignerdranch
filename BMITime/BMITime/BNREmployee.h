//
//  BNREmployee.h
//  BMITime
//
//  Created by Sam Napolitano on 4/29/14.
//  Copyright (c) 2014 Samuel Napolitano. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
@class BNRAsset;

@interface BNREmployee : BNRPerson

@property (nonatomic) int employeeID;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSSet *assets;

- (double)yearsOfEmployment;
- (void)addAsset:(BNRAsset *)a;
- (void)removeAsset:(BNRAsset *)a;
- (unsigned int)valueOfAssets;

@end
