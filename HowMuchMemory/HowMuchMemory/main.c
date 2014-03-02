//
//  main.c
//  HowMuchMemory
//
//  Created by Sam Napolitano on 3/2/14.
//  Copyright (c) 2014 Sam Napolitano. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[])
{
	// set i
	float i = 12.01;
	//set i address pointer
	float *addressOfi = &i;
	
	// return data about i
	printf("i is %f, and is %zu bytes\n", i, sizeof(i) );
	// return data about address of i
	printf("The addressOfI is %p, and is %zu bytes\n", addressOfi, sizeof(addressOfi));
	
	return EXIT_SUCCESS;
}

