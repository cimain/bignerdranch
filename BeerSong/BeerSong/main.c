//
//  main.c
//  BeerSong
//
//  Created by Sam Napolitano on 1/26/14.
//  Copyright (c) 2014 Sam Napolitano. All rights reserved.
//

#include <stdio.h>

// Our first recursive funciont
void singSongFor(int numberOfBottles)
{
	// Check if numberOfBottles is empty || 0
	if(numberOfBottles == 0){
		// Empty
		printf("There are simply no more bottles of beer on the wall. \n\n");
	}else{
		// Not empty
		printf("%d bottles of beer on the wall, %d bottles of beer.\n",
			   numberOfBottles, numberOfBottles);
		// Take one down!
		int oneFewer = numberOfBottles - 1;
		printf("Take one down, pass it around, %d bottles of beer on the wall.\n\n", oneFewer);
		// Recursive function until there are 0 bottles left
		singSongFor(oneFewer);
		// Now we are done. 
		printf("Pot a bottle in the recycling, %d empty bottles in the bin. \n",
			   numberOfBottles);
	}
}

int main(int argc, const char * argv[])
{
	singSongFor(4);
	return 0;
}

