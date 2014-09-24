//
//  BNRAppliance.m
//  Appliances
//
//  Created by Sam Napolitano on 5/29/14.
//  Copyright (c) 2014 Sam Napolitano. All rights reserved.
//

#import "BNRAppliance.h"

@implementation BNRAppliance

-(instancetype)init{
	// Call NSObjects init
	self = [super init];
	
	//did it return something non-nil
	if(self){
		// Give a voltage
		self.voltage = 120;
	}
	
	return self;
}

@end
