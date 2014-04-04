//
//  main.m
//  Readline
//
//  Created by Samuel Napolitano on 4/4/14.
//  Copyright (c) 2014 Samuel Napolitano. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <readline/readline.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Enter a number to count down from: ");
        NSString *countStart = [NSString stringWithUTF8String:readline("Where to begin?: \n")];
        
        // now for loop, cleaner
        for ( NSInteger n = countStart.integerValue; n >= 0; n -= 1) {
            if (n % 5 == 0) {
                NSLog(@"Found one divisible by 5: %ld \n", (long)n );
            }else{
                NSLog(@"%ld \n", (long)n);
            }
        }
        
    }
    
    return EXIT_SUCCESS;
}

