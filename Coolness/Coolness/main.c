//
//  main.c
//  Coolness
//
//  Created by Sam Napolitano on 1/26/14.
//  Copyright (c) 2014 Sam Napolitano. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[])
{
	// Init i because we need it outside the loop
	int i;
	//run a loop
	for (i=0; i<12; i++) {
		// use continue to skip further execution
		if(i % 3 == 0){
			continue;
		}
		printf("Checking if i = %d \n", i);
		// break out of the loop when we find the answer
		if (i + 90 == i * i) {
			break;
		}
	}
	printf("The Answer is %d. \n", i);
	
	// Lets rewrite this with a do while loop
	int n = 0;
	do {
		printf("%d. Sam is cool \n", n);
		n++;
	} while (n < 12);
	
	return EXIT_SUCCESS;
}

