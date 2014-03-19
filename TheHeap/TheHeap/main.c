//
//  main.c
//  TheHeap
//
//  Created by Samuel Napolitano on 3/19/14.
//  Copyright (c) 2014 Samuel Napolitano. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person *p)
{
    return p->weightInKilos / (p->heightInMeters * p->heightInMeters);
}

int main(int argc, const char * argv[])
{
    // First example
    
    // Allocate a pointer for the buffer
    float *startOfBuffer;
    
    // Ask to use some bytes fom the heap
    startOfBuffer = malloc(1000 * sizeof(float));
    
    // use the buffer here (no example)
    
    // Relinquish your claim on the the memory so it can be reused
    free(startOfBuffer);
    
    startOfBuffer = NULL;
    
    // Second example
    
    // Allocate memory for one person struct
    Person *mikey = (Person *)malloc(sizeof(Person));
    
    // Fill in two members of the struct
    // '->' is Dereference the pointer p to the struct and get me the member called weightInKilos
    
    mikey->weightInKilos = 96;
    mikey->heightInMeters = 1.7;
    
    // Print out the BMI of original Perons
    float mikeyBMI =bodyMassIndex(mikey);
    printf("Mikey has a BMI of %f\n", mikeyBMI);
    
    // Let the memory go
    free(mikey);
    
    mikey = NULL;
    
    return EXIT_SUCCESS;
}

