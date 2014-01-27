//
//  main.c
//  CountDown
//
//  Created by Sam Napolitano on 1/26/14.
//  Copyright (c) 2014 Sam Napolitano. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[])
{
	// Do it with while first
	int i = 99;
	while (i >= 0) {
		printf("%d \n", i);
		if (i%5 == 0) {
			printf("Found one! \n");
		}
		i -= 3;
	}
	
	// now for loop, cleaner
	for (int n = 99; n >= 0; n -= 3) {
		printf("%d \n", n);
		if (n % 5 == 0) {
			printf("Found one! \n");
		}
	}
	
	// now do / while
	int x = 99;
	do  {
		printf("%d \n", x);
		if (x % 5 == 0) {
			printf("Found one! \n");
		}
		x -= 3;
	} while ( x >= 0 );
	
	return EXIT_SUCCESS;
}