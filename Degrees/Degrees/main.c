//
//  main.c
//  Degrees
//
//  Created by Sam Napolitano on 1/26/14.
//  Copyright (c) 2014 Sam Napolitano. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

// Declare a global var which can be accessed from everywhere
// float lastTemperature;

/* 
 Declare a static global var which is only accessible
 in the scope of this file. We can also set it at the same time
 we initialize it.
*/
static float lastTemperature = 50.0;


float fahrenheitFromCelsius(float cel)
{
	// Set the global
	lastTemperature = cel;
	// First calculate the fahrenheit from celsius
	float fahr = cel * 1.8 + 32.0;
	// Print the difference
	printf("%f Celsius is %f Fahrenheit\n", cel, fahr);
	
	// Return the caclulated number
	return fahr;
}

int main(int argc, const char * argv[])
{
	// Set freezing point in C
	float freezeInC = 0;
	// Get the F conversion
	float freeseInF = fahrenheitFromCelsius(freezeInC);
	
	// Give some output
	printf("Water freezes at %f degrees fahrenheit \n", freeseInF);
	// Accessing the global var
	printf("The last temperature that was converted was %f \n", lastTemperature);
	
	/* 
	 Returning 0 means no failures, 1 would indicate failure
	 You could alternatively use EXIT_SUCCESS or EXIT_FAILURE, but would need
	 to include the stdlib.h library. I actually prefer the robust naming
	*/
	return EXIT_SUCCESS;
}