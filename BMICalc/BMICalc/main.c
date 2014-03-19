//
//  main.c
//  BMICalc
//
//  Created by Sam Napolitano on 3/18/14.
//  Copyright (c) 2014 Sam Napolitano. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

typedef struct {
	float heightInMeters;
	int weightInKilos;
} Person;

float bodyMassIndex(Person p)
{
	return p.weightInKilos / (p.heightInMeters * p.heightInMeters);
}

int main(int argc, const char * argv[])
{
	Person sam;
	sam.heightInMeters = 1.7;
	sam.weightInKilos = 96;
	
	Person cindy;
	cindy.heightInMeters = 1.97;
	cindy.weightInKilos	= 84;
	
	printf("Sam is %.2f meters tall\n", sam.heightInMeters);
	printf("Sam weighs %d kilograms\n", sam.weightInKilos);
	
	float bmi;
	bmi = bodyMassIndex(sam);
	printf("Sams BMI is %.2f\n", bmi);

	printf("Cindy is %.2f meters tall\n", cindy.heightInMeters);
	printf("Cindy weighs %d kilograms\n", cindy.weightInKilos);
	
	bmi = bodyMassIndex(cindy);
	printf("Cindys BMI is %.2f\n", bmi);
	
    return EXIT_SUCCESS;
}

