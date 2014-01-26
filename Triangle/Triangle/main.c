//
//  main.c
//  Triangle
//
//  Created by Sam Napolitano on 1/26/14.
//  Copyright (c) 2014 Sam Napolitano. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

// Function to calculate the remains, also checks validity
float remainingAngle( float angleA, float angleB)
{
	// Calculate remains based on input
	float remains = 180 - (angleA + angleB);
	// Check if the remains are less than 0, because that would be a line.
	if (remains <= 0) {
		// return some error messages
		printf("Remains can not be 0 \n");
		// Exit on error
		exit(EXIT_FAILURE);
	}else{
		// Everything is great, return the value.
		return remains;
	}
}

int main(int argc, const char * argv[])
{
	// Set angles and get the remaining angle.
	float angleA = 90.0;
	float angleB = 90.0;
	float angleC = remainingAngle(angleA, angleB);
	// output the success
	printf("The remaining angle is %f degrees \n", angleC);
	return EXIT_SUCCESS;
}

