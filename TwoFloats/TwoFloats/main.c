//
//  main.c
//  TwoFloats
//
//  Created by Sam Napolitano on 1/25/14.
//  Copyright (c) 2014 Sam Napolitano. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
	/* 
	 Create 2 floating point variables and a double to 
	 store the sum of the 2 floats
	 */
	
	float float1;
	float float2;
	double floatSums;
	
	// Assign the values
	float1 = 3.14;
	float2 = 42.0;
	
	// Do the math
	floatSums = float1 + float2;
	
	// print the results
	printf("The sum of %f and %f is %f \n", float1, float2, floatSums);
	
	// give an exit status
	return 0;
	
}

