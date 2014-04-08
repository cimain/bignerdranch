//
//  main.m
//  DateList
//
//  Created by Samuel Napolitano on 4/7/14.
//  Copyright (c) 2014 Samuel Napolitano. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval: 60 * 60 * 24];
        NSDate *yesterday = [now dateByAddingTimeInterval: -60 * 60 * 24];

        NSArray *dateList = @[now, tomorrow, yesterday];
        
        NSLog(@"The Date list is %@",dateList);
        
        // Arrays are zero based
        NSLog(@"The first date is %@", dateList[0]);
        // Array methods
        NSLog(@"The number of dates is %lu", [dateList count]);
        
        // Lets make a simple for loop to do this work
        
        NSUInteger dateCount = [dateList count];
        
        for (int i = 0; i < dateCount; i++) {
            NSDate *d = dateList[i];
            NSLog(@"For loop date %d is %@",i,d);
        }
        
        for (NSDate *d in dateList) {
            NSLog(@"Fast For loop is %@",d);
        }
        
        // Ok lets do it again with the mutable list
        // note this is a convenience method, you can also use [[NSMutableArray alloc] init];
        NSMutableArray *mdateList = [NSMutableArray array];
        
        [mdateList addObject:now];
        [mdateList addObject:tomorrow];
        [mdateList insertObject:yesterday atIndex:0];
        
        for (NSDate *d in mdateList) {
            NSLog(@"The date in mdatelist is %@", d);
        }
        
        [mdateList removeObjectAtIndex:0];
        NSLog(@"The first item in the mutable array is %@", mdateList[0]);
    }
    return EXIT_SUCCESS;
}

