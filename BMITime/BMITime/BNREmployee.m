//
//  BNREmployee.m
//  BMITime
//
//  Created by Sam Napolitano on 4/29/14.
//  Copyright (c) 2014 Samuel Napolitano. All rights reserved.
//

#import "BNREmployee.h"

@implementation BNREmployee

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
	return [NSString stringWithFormat:@"<Employee %d>", self.employeeID];
}

@end
