//
//  main.m
//  VowelMovement
//
//  Created by Samuel Napolitano on 5/21/14.
//  Copyright (c) 2014 Samuel Napolitano. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ArrayEnumerationBlock)(id, NSUInteger, BOOL *);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
		// Create an array of strings and a container for devoweled strings
		NSArray *originalStrings = @[@"Sauerkraut", @"Raygun", @"Big Nerd Ranch",
									@"mississippi"];
		
		NSLog(@"Original Strings: %@", originalStrings);
		NSMutableArray *devoweledStrings = [NSMutableArray array];
		NSArray *vowels = @[@"a",@"e",@"i",@"o",@"u"];
		
		//declare the block variable
		ArrayEnumerationBlock devowler;
		
		// compose the block and assign it to the above variable
		
		devowler = ^(id string, NSUInteger i, BOOL *stop){
			NSMutableString *newString = [NSMutableString stringWithString:string];
			NSRange yRange = [string rangeOfString:@"y"
										   options:NSCaseInsensitiveSearch];
			
			// Did we find a Y?
			if(yRange.location != NSNotFound){
				*stop = YES; // prevet further iterations
				return; //end this iteration
			}
			// iterate over the array of vowels and, replacing occurences of each
			// with an empty string
			for (NSString *s in vowels) {
				NSRange fullrange = NSMakeRange(0, [newString length]);
				[newString replaceOccurrencesOfString:s
										   withString:@""
											  options:NSCaseInsensitiveSearch
												range:fullrange];
			}
			[devoweledStrings addObject:newString];
		}; // end of block
		
		[originalStrings enumerateObjectsUsingBlock:devowler];
		
		NSLog(@"Devoweld Strings: %@", devoweledStrings);
        
    }
    return EXIT_SUCCESS;
}

