//
//  main.c
//  Addresses
//
//  Created by Sam Napolitano on 1/30/14.
//  Copyright (c) 2014 Sam Napolitano. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[])
{
	
	int i = 17;
	int *addressOfI = &i;
	printf("i stores its value at %p\n", addressOfI);
	printf("this function starts at %p\n", main);
	printf("the int stored at the addressOfI is %d\n", *addressOfI);
	
	int ia = 17;
	int *addressOfIa = &ia;
	printf("ia stores its value at %p\n", addressOfIa);
	*addressOfIa = 89;
	printf("Now i is %d\n", ia);
	printf("An int is %zu bytes\n", sizeof(int));
	printf("A pointer is %zu bytes\n", sizeof(int *));
	
	printf("An i is %zu bytes\n", sizeof(i));
	printf("A addressOfI pointer is %zu bytes\n", sizeof(addressOfI));
	
	// Set myPointer to Null for now, Ill store an address there
	// Later in the program
	float *myPointer;
	myPointer = NULL;
	
	// has mypointer been set?
	if (myPointer) {
		//myPointer is not NULL
	}else{
		// myPointer is NULL
	}
	
    return EXIT_SUCCESS;
}

