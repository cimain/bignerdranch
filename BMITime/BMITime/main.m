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
// Commeting out, person is included with employee
// #import "BNRPerson.h"
#import "BNREmployee.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create the pointer to an instance of BNRPerson
        // Note to self, how to make this a convenience method.
        BNREmployee *sam = [[BNREmployee alloc] init];
		// BNRPerson *sam = [[BNRPerson alloc] init];
		
        
        // Give the instance values interesting values using the setters
		sam.weightInKilos = 100;
		sam.heightInMeters = 1.9;
		sam.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2010"];
		sam.employeeID = 12;
		
		// removed we should use dot notation instead
		// [sam setWeightInKilos:100];
        // [sam setHeightInMeters:1.9];
        
        // Now log the instance vars using the getters
		int weight = sam.weightInKilos;
		float height = sam.heightInMeters;
		
		// removed we should use dot notation instead
		// int weight = [sam weightInKilos];
        // float height = [sam heightInMeters];
        
        // insert code here...
        NSLog(@"Sam is %d kilos, and %.2f meters", weight, height);
        
		//More properties
		NSLog(@"Sam is employee number %@, hired on %@", sam, sam.hireDate);
		
        // Log some values using the custom method
        float bmi = [sam bodyMassIndex];
		double years = sam.yearsOfEmployment;
        NSLog(@"Sam has a BMI of %.2f, and has worked here for %.2f years", bmi, years);
        
    }
    return 0;
}

