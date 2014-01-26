//
//  main.c
//  Turkey
//
//  Created by Sam Napolitano on 1/25/14.
//  Copyright (c) 2014 Sam Napolitano. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
	// Declare a weight
	float weight;
	
	// Store a number in that variable
	weight = 14.2;
	
	// Log that number out to a user
	printf("The weight is: %f \n", weight);
	
	// another var
	float cookingTime;
	
	// Calculate the cooking time and store that shiz
	cookingTime	 = 15.0 + ( 15.0 * weight );
	
	// Log that cooking time out
	printf("The time to cook your %flb turkey, is: %f minues ",
		   weight, cookingTime);
	
	return 0;
}

