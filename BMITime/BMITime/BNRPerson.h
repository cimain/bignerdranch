//
//  BNRPerson.h
//  BMITime
//
//  Created by Samuel Napolitano on 4/16/14.
//  Copyright (c) 2014 Samuel Napolitano. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject

@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;


// Removing this code in place of the above property settings
//{
//    //BNRPerson has two instance variables
//    // Instance vars start with _ by best convention.
//    float _heightInMeters;
//    int _weightInKilos;
//}
//
//// BNRPerson has methods to read and set its instance variables (getters and setters)
//- (float)heightInMeters;
//- (void)setHeightInMeters:(float)h;
//- (int)weightInKilos;
//- (void)setWeightInKilos:(int)w;

//BNRPerson has a method that calculates the Body Mass index
- (float)bodyMassIndex;

@end
