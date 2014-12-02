//
//  BNRItem.m
//  RandomItems
//
//  Created by Sam Napolitano on 6/28/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

//initializer
-(instancetype)initWithItemName:(NSString *)name
				 valueInDollars:(int)value
				   serialNumber:(NSString *)sNumber {
	self = [super init];
	
	if(self){
		// Give instance vars
		_itemName = name;
		_serialNumber = sNumber;
		_valueInDollars = value;
		_dateCreated = [[NSDate alloc] init];
	}
	
	return self;
}

+(instancetype)randomItem{
    // Create an Immutable array of adjectives
    NSArray *randomAdjectiveList = @[@"Rusty", @"Fluffy", @"Shinny"];
    
    // Create an immutable array of nouns
    NSArray *randomNounList = @[@"Spoon", @"Tampon", @"Bobblehead"];
    
    // Get the index of a random adjective/noun from the list
    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    NSInteger nounIndex = arc4random() % [randomNounList count];
    
    // NSInteger is not an object, but a type definition
    NSString *randomName = [NSString stringWithFormat:@"%@ %@", randomAdjectiveList[adjectiveIndex], randomNounList[nounIndex]];
    
    int randomValue = arc4random() % 100;
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    'O' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    'O' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    'O' + arc4random() % 10];
    
    BNRItem *newItem = [[self alloc] initWithItemName:randomName
                                       valueInDollars:randomValue
                                         serialNumber:randomSerialNumber];
    return newItem;
}

-(instancetype)initWithItemName:(NSString *)name{

	return [self initWithItemName:name
				   valueInDollars:0
					 serialNumber:@""];

}

-(instancetype)init {
	return [self initWithItemName:@"Item"];
}


// accessor implementation for item name
-(void)setItemName:(NSString *)str	{
	_itemName = str;
}
-(NSString *)itemName {
	return _itemName;
}

//accessors for containers
-(void)setContainedItem:(BNRItem *)item {
    _containedItem = item;
    
    // When given a contained item
    // the item will be given a pointer to its container
    item.container = self;
}

-(BNRItem *)containedItem {
    return _containedItem;
}

-(void)setContainer:(BNRItem *)item {
    _container = item;
}

-(BNRItem *)container {
    return _container;
}

// accessor implementation for serial number
-(void)setSerialNumber:(NSString *)str {
	_serialNumber = str;
}
-(NSString *)serialNumber {
	return _serialNumber;
}

-(void)setValueInDollars:(int)v {
	_valueInDollars = v;
}
-(int)valueInDollars{
	return _valueInDollars;
}

-(NSDate *)dateCreated{
	return _dateCreated;
}

-(NSString *)description{
	NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
								   self.itemName,
								   self.serialNumber,
								   self.valueInDollars,
								   self.dateCreated];
	return descriptionString;
}

// override
- (void) dealloc {
    NSLog(@"Destroyed: %@", self);
}

@end

