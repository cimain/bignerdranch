//
//  main.c
//  TurkeyTimer
//
//  Created by Sam Napolitano on 1/25/14.
//  Copyright (c) 2014 Sam Napolitano. All rights reserved.
//

#include <stdio.h>

void showCookTimeForTurkey(int pounds)
{
	// calculate minutes and store to a variable
	int necessaryMinutes = 15 + (15 * pounds);
	// print out how long it takes
	printf("Cook for %d minutes. \n", necessaryMinutes);
	if ( necessaryMinutes > 120 ) {
		int halfway = necessaryMinutes / 2;
		printf( "Rotate after %d of the %d minutes \n", halfway, necessaryMinutes);
	}
	// The following line fails because halfway is out of scope.
	// printf( "Rotate after %d of the %d minutes \n", halfway, necessaryMinutes);
}

int main(int argc, const char * argv[])
{

	// Set the weight of turkey parts
	int totalWeight = 10;
	int gibletsWeight = 1;
	int turkeyWeight = totalWeight - gibletsWeight;
	
	// Execute our weight functions
	showCookTimeForTurkey(turkeyWeight);
	
	// Return - do we always need a return?
	return 0;
}

