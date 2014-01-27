//
//  main.c
//  Squared
//
//  Created by Sam Napolitano on 1/26/14.
//  Copyright (c) 2014 Sam Napolitano. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

// Simple squaring function
int squared(int num)
{
	return num * num;
}

int main(int argc, const char * argv[])
{
	// set the number to square and square it;
	int num = 5;
	int squaredNum = squared(num);
	// Make some output with escaped quotes for fun
	printf("\"%d\" squared is %d \n", num, squaredNum);
	return EXIT_SUCCESS;
}

