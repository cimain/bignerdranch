//
//  main.c
//  TimeChallenge
//
//  Created by Sam Napolitano on 3/18/14.
//  Copyright (c) 2014 Sam Napolitano. All rights reserved.
//

#include <stdio.h>
#include <time.h>
#include <stdlib.h>

int main(int argc, const char * argv[])
{
	// Set current time
	long timeInSeconds = time(NULL);
	// Print out current time in seconds
	printf("Time since 1970 is %ld\n", timeInSeconds);
	// Add 4MM seconds to current time
	timeInSeconds = timeInSeconds + 4000000;
	
	// create a time structure
	struct tm timeInFuture;
	// Get the new time from the pointer location and store it in the struct
	localtime_r(&timeInSeconds, &timeInFuture);
	// print out the date, +1 for the month... but not the day. Also WTF 1900?
	printf("The time in 4MM seconds will be, %d-%d-%d\n", timeInFuture.tm_mon+1, timeInFuture.tm_mday,timeInFuture.tm_year+1900);
	
    return EXIT_SUCCESS;
}

