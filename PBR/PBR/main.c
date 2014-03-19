//
//  main.c
//  PBR
//
//  Created by Sam Napolitano on 3/18/14.
//  Copyright (c) 2014 Sam Napolitano. All rights reserved.
//

#include <stdio.h>
#include <math.h>
#include <stdlib.h>

void metersToFeetAndInches(double meters, unsigned int *ftPtr, double *inPtr)
{
	// This function assumes meters is non-negative
	
	// Convert the number of meters into a floating-point number of feet
	double rawFeet = meters * 3.281; // eg. 2.4536
	double fractionalFoot;
	double feet;
	
	// How many complete feet as an unsigned int?
	fractionalFoot = modf(rawFeet, &feet);
	
	// Store the number of feet at the assigned address, if not null
	if (ftPtr) {
		printf("Storing %u to the address %p\n", (unsigned int)feet, ftPtr);
		*ftPtr = feet;
	}
	
	// Calculate inches
	double inches = fractionalFoot * 12.0;
	
	// Store the number of inches at the supplied address, if not null
	if (inPtr) {
		printf("Storing %.2f to the address %p\n", inches, inPtr);
		*inPtr = inches;
	}
}

int main(int argc, const char * argv[])
{
	double meters = 3.0;
	unsigned int feet;
	double inches;
	
	metersToFeetAndInches(meters, &feet, &inches);
	printf("%.1f meters is equal to %d feet and %.1f inches.\n", meters, feet, inches);
	
	double pi = 3.14;
	double integerPart;
	double fractionPart;
	
	// Passs the address of the integerPart as an argument
	fractionPart = modf(pi, &integerPart);
	// Find the value stored in integerPart
	printf("integerPart = %.0f, fractionPart = %.2f\n", integerPart, fractionPart);
	
    return EXIT_SUCCESS;
}

