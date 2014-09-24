//
//  main.m
//  Stringz
//
//  Created by Sam Napolitano on 5/20/14.
//  Copyright (c) 2014 Sam Napolitano. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    
		NSMutableString *str = [[NSMutableString alloc] init];
		for (int i = 0; i < 10; i++) {
			[str appendString:@"Sam is Awesome\n"];
		}
		
		NSError *error;
		BOOL success = [str writeToFile:@"/tmp/cool.txt"
							 atomically:YES
							   encoding:NSUTF8StringEncoding
								  error:&error];
		if (success) {
			NSLog(@"Done writing file");
		}else{
			NSLog(@"Failed writing file: %@", [error localizedDescription]);
		}
		
	}
    return 0;
}

