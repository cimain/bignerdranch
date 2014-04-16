//
//  main.m
//  BMITime
//
//  Created by Samuel Napolitano on 4/16/14.
//  Copyright (c) 2014 Samuel Napolitano. All rights reserved.
//

//precompiled so look in libs
#import <Foundation/Foundation.h>
//not precompiled, look in the current project
#import "BNRPerson.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create the pointer to an instance of BNRPerson
        // Note to self, how to make this a convenience method.
        BNRPerson *sam = [[BNRPerson alloc] init];
        
        // Give the instance values interesting values using the setters
        [sam setWeightInKilos:100];
        [sam setHeightInMeters:1.9];
        
        // Now log the instance vars using the getters
        int weight = [sam weightInKilos];
        float height = [sam heightInMeters];
        
        // insert code here...
        NSLog(@"Sam is %d kilos, and %.2f meters", weight, height);
        
        // Log some values using the custom method
        float bmi = [sam bodyMassIndex];
        NSLog(@"Sam has a BMI of %.2f", bmi);
        
    }
    return 0;
}

