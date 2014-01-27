//
//  main.c
//  Numbers
//
//  Created by Sam Napolitano on 1/26/14.
//  Copyright (c) 2014 Sam Napolitano. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, const char * argv[])
{
	// Unsigned number examples
	unsigned long unum = 255;
	printf("My number is %lu \n", unum);
	printf("In octal, num is %lo \n", unum);
	printf("In hexidecimal, num is %lx \n", unum);
	
	//signed long examples
	long lnum = 255;
	printf("My number is %ld \n", lnum);
	printf("In octal, num is %lo \n", lnum);
	printf("In hexidecimal, num is %lx \n", lnum);
	
	// int examples
	int num = 255;
	printf("My number is %d \n", num);
	printf("In octal, num is %o \n", num);
	printf("In hexidecimal, num is %x \n", num);
	
	// Passing math direct to the printf function
	printf("3 * 3 + 5 * 2 = %d \n", 3 * 3 + 5 * 2);
	printf("11 / 3 = %d \n", 11 / 3);
	printf("11 / 3 = %d remainder of %d \n", 11 / 3, 11 % 2 );
	printf("11 / 3 = %f \n", 11 / (float)3);
	
	// Shortcut operators
	num -= 260;
	num += -5;
	num *= 2;
	num /= 3;
	// Absolute values
	printf("The absolute value of %d is %d \n", num, abs(num));
	
	// playing with floats doubles and decimal places
	double y = 12345.6789;
	printf("y is %.2f \n", y);
	printf("y is %.2e \n", y);
	
	// playing with sin functions in math lib. 
	double x = 1;
	printf("The sin of x is %.3f \n", sin(x));
	
	return EXIT_SUCCESS;
	
	
}

