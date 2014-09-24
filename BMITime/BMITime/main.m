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
#import "BNRAsset.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        // Create Exectutives
        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];
        
        
        
        // Create Employees
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            // create an instance of BNREmployee
            BNREmployee *mikey = [[BNREmployee alloc] init];
            
            // Give the instance variables interesting values
            mikey.weightInKilos = 90 + i;
            mikey.heightInMeters = 1.8 - i/10.0;
            mikey.employeeID = i;
            
            // Put the employee in the employees array
            if(i == 0){
                //Emp 0 is CEO
                [executives setObject:mikey forKey:@"CEO"];
            }
            if (i == 1){
                //Emp 1 is CTO
                [executives setObject:mikey forKey:@"CTO"];
            }
            
            [employees addObject:mikey];
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc]init];
        
        // Create 10 assets
        
        for (int i = 0; i < 10; i++) {
            // create asset
            BNRAsset *asset = [[BNRAsset alloc] init];
            
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            // get random number between 0 and 9 inclusive
            NSUInteger randomIndex = random() % [employees count];
            
            // Find that employee
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            // Assign Asset to the employee
            [randomEmployee addAsset:asset];
            [allAssets addObject:asset];
            
            if (i % 5 == 0) {
                //[randomEmployee removeAsset:asset];
            }
            
        }
        
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets"
                                                              ascending:YES];
        
        NSSortDescriptor *eid = [NSSortDescriptor sortDescriptorWithKey:@"employeeID"
                                                              ascending:YES];
        
        [employees sortUsingDescriptors: @[voa,eid]];
        
        NSLog(@"Executives: %@", executives);
        NSLog(@"CEO: %@", executives[@"CEO"]);
        NSLog(@"CTO: %@", executives[@"CTO"]);
        
        NSLog(@"Employees: %@", employees);
        
        NSLog(@"Giving up ownership of one employee");
        
        [employees removeObjectAtIndex:5];
        
        NSLog(@"allAssets: %@", allAssets);
        
        NSLog(@"Giving up owndership of arrays");
        
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 70"];
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        
        NSLog(@"toBeReclaimed: %@", toBeReclaimed);
        toBeReclaimed = nil;
        allAssets = nil;
        employees = nil;
        executives = nil;
        
//        // Create the pointer to an instance of BNRPerson
//        // Note to self, how to make this a convenience method.
//        BNREmployee *sam = [[BNREmployee alloc] init];
//		// BNRPerson *sam = [[BNRPerson alloc] init];
//		
//        
//        // Give the instance values interesting values using the setters
//		sam.weightInKilos = 100;
//		sam.heightInMeters = 1.9;
//		sam.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2010"];
//		sam.employeeID = 12;
//		
//		// removed we should use dot notation instead
//		// [sam setWeightInKilos:100];
//        // [sam setHeightInMeters:1.9];
//        
//        // Now log the instance vars using the getters
//		int weight = sam.weightInKilos;
//		float height = sam.heightInMeters;
//		
//		// removed we should use dot notation instead
//		// int weight = [sam weightInKilos];
//        // float height = [sam heightInMeters];
//        
//        // insert code here...
//        NSLog(@"Sam is %d kilos, and %.2f meters", weight, height);
//        
//		//More properties
//		NSLog(@"Sam is employee number %@, hired on %@", sam, sam.hireDate);
//		
//        // Log some values using the custom method
//        float bmi = [sam bodyMassIndex];
//		double years = sam.yearsOfEmployment;
//        NSLog(@"Sam has a BMI of %.2f, and has worked here for %.2f years", bmi, years);
        
    }
    sleep(5);
    return 0;
}

