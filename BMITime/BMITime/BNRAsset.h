//
//  BNRAsset.h
//  BMITime
//
//  Created by Samuel Napolitano on 5/14/14.
//  Copyright (c) 2014 Samuel Napolitano. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNREmployee;

@interface BNRAsset : NSObject

@property (nonatomic, copy) NSString *label;
@property (nonatomic, weak) BNREmployee *holder;
@property (nonatomic) unsigned int resaleValue;

@end
