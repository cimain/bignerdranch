//
//  main.m
//  TimesTwo
//
//  Created by Samuel Napolitano on 4/4/14.
//  Copyright (c) 2014 Samuel Napolitano. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create a NSDate pointer that points to the a instance of NSDate object
        // (note convenience helper)
        NSDate *currentTime = [NSDate date];
        NSLog(@"currentTime's value is %p", currentTime);
        
        // Create a new pointer to the NSDate instance
        NSDate *startTime = currentTime;
        
        // Sleep zzZZZzz
        sleep(2);
        
        //  Update current time NSDate pointer to a new instace
        currentTime = [NSDate date];
        NSLog(@"currentTime's value is %p", currentTime);
        NSLog(@"The address of the original object is %p", startTime  );
        
        // Set current time to nil ( no more references to the origin NSDate object,
        // arc will destroy it automatically )
        currentTime = Nil;
        NSLog(@"currentTime's value is %p", currentTime);
        
    }
    return EXIT_SUCCESS;
}

