//
//  BNRItem.h
//  RandomItems
//
//  Created by Sam Napolitano on 6/28/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
	NSString *_itemName;
	NSString *_serialNumber;
	int _valueInDollars;
	NSDate *_dateCreated;
    
    BNRItem *_container;
    BNRItem *_containedItem;
}

+(instancetype)randomItem;

// Designated Initializer
-(instancetype)initWithItemName:(NSString *)name
				 valueInDollars:(int)value
				   serialNumber:(NSString *)sNumber;

-(instancetype)initWithItemName:(NSString *)name;

-(void)setContainedItem:(BNRItem *)item;
-(BNRItem *)containedItem;

-(void)setContainer:(BNRItem *)item;
-(BNRItem *)container;

// Accessors for item name
-(void)setItemName:(NSString *)str;
-(NSString *)itemName;

// Accessors for serial number
-(void)setSerialNumber:(NSString *)str;
-(NSString *)serialNumber;

// Accessor for setting dollar value
-(void)setValueInDollars:(int)v;
-(int)valueInDollars;

// Getter for date
-(NSDate *)dateCreated;

@end
