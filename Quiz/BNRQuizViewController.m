//
//  BNRQuizViewController.m
//  Quiz
//
//  Created by Sam Napolitano on 6/26/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;
@property (nonatomic) int currentQuestionIndex;
@property (nonatomic, copy) NSArray *answers;
@property (nonatomic, copy) NSArray *questions;

@end

@implementation BNRQuizViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil
						bundle:(NSBundle *)nibBundleOrNil
{
	// call the init method implemented in the superclass
	self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	if(self){
		// Create 2 arrays filled with quetions and answers
		// and make the pointers to them
		
		self.questions = @[@"Whats my name?",
						   @"Whats my age?",
						   @"Whats my weight?"];
		
		self.answers = @[@"Sam",
						 @"32",
						 @"170"];
	}
	
	// Return the address of the new object
	return self;
	
}

-(IBAction)showQuestion:(id)sender{
	// Step the index up
	self.currentQuestionIndex++;
	
	// Check to see if we are passed the end
	if ( self.currentQuestionIndex == [self.questions count] ) {
		self.currentQuestionIndex = 0;
	}
	
	// get the string
	NSString *question = self.questions[self.currentQuestionIndex];
	
	// Display in the question label
	self.questionLabel.text = question;
	
	// Resest the answer label
	self.answerLabel.text = @"???";

}

-(IBAction)showAnswer:(id)sender{
	// Get the answer
	NSString *answer = self.answers[self.currentQuestionIndex];
	// Set the label
	self.answerLabel.text = answer;
}


@end
