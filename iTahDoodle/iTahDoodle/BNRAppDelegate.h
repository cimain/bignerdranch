//
//  BNRAppDelegate.h
//  iTahDoodle
//
//  Created by Sam Napolitano on 5/21/14.
//  Copyright (c) 2014 Sam Napolitano. All rights reserved.
//

#import <UIKit/UIKit.h>

// Declare a helper function that you will use to get a path
// to the location on disl where you can save the todo list
NSString *BNRDocPath(void);

@interface BNRAppDelegate : UIResponder <UIApplicationDelegate, UITableViewDataSource>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic) UITableView *taskTable;
@property (nonatomic) UITextField *taskField;
@property (nonatomic) UIButton *insertButton;

@property (nonatomic) NSMutableArray *tasks;

-(void)addTask:(id)sender;

@end
