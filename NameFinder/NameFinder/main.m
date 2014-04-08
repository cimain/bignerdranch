//
//  main.m
//  NameFinder
//
//  Created by Samuel Napolitano on 4/7/14.
//  Copyright (c) 2014 Samuel Napolitano. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // One liner is not the best convention, but its fun.
        NSArray *words = [[NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                   encoding:NSUTF8StringEncoding
                                                      error:NULL]
                          componentsSeparatedByString:@"\n"];
        
        NSArray *names = [[NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                   encoding:NSUTF8StringEncoding
                                                      error:NULL]
                          componentsSeparatedByString:@"\n"];
		
        // Very simple recursion.
        for (NSString *w in words) {
            for ( NSString *n in names) {
                // found a few ways to do this.
                // if we know they are 2 strings, this is the best method I have found.
                if( [[n lowercaseString] isEqualToString:w ] ){
                    NSLog(@"%@ matches %@", n, w);
                }
            }
        }
        
    }
    return EXIT_SUCCESS;
}