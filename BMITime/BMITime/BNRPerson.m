//
//  BNRPerson.m
//  BMITime
//
//  Created by Samuel Napolitano on 4/16/14.
//  Copyright (c) 2014 Samuel Napolitano. All rights reserved.
//

// convention is to add 3 or more unique letters to class names, classes are not namespaced is Obj-C (BNR = Big Nerd Ranch)
#import "BNRPerson.h"

@implementation BNRPerson

// Removing accessers, compiled by properties instead
//- (float)heightInMeters {
//    return _heightInMeters;
//}
//
//- (void)setHeightInMeters:(float)h {
//    _heightInMeters = h;
//}
//
//- (int)weightInKilos {
//    return _weightInKilos;
//}
//
//- (void)setWeightInKilos:(int)w {
//    _weightInKilos = w;
//}

- (float)bodyMassIndex {
    float h = [self heightInMeters];
    int w = [self weightInKilos];
    return w / (h * h);
}

@end
