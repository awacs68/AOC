//
//  ViewController.m
//  AOCProject3
//
//  Created by Mark A McAninch on 5/23/13.
//  Copyright (c) 2013 Mark A McAninch. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// Add Function
- (int)add:(NSInteger)carOne addCarTwo:(NSInteger)carTwo
{
    return (carOne + carTwo);
}
// Compare Function

- (BOOL)compare:(NSInteger)firstInt secondInt:(NSInteger)secondInt
  {
      if (firstInt == secondInt)
      {
          return YES;
      }
      else {
          return NO;
      }
  }

// Append Function
- (NSString*)append: (NSString*)appendString1 with:(NSString*)appendString2
{
    NSMutableString *append1 = [[NSMutableString alloc] initWithString:appendString1];
    NSString *append3 = [append1 stringByAppendingString:appendString2];
    return append3;
}

// Display Alert With String Function
- (void)displayAlertWithString:(NSString*)addString
{
    UIAlertView *myAlert = [[UIAlertView alloc] initWithTitle:@"I love Cars" message:addString delegate:nil cancelButtonTitle:@"Click if you love cars also" otherButtonTitles:nil];
    [myAlert show];
}





- (void)viewDidLoad
{
// Call 
    int myCars = [self add:1 addCarTwo:2];
    NSLog(@"%d", myCars);

// Call Add display with alert with string
    
// Change Number to NSString
    NSNumber *changeNumber = [NSNumber numberWithInt:myCars];
// Change String
    NSString *myString = [changeNumber stringValue];
// Change Text
    NSString *myText = [NSString stringWithFormat:@"The number is "];
    
// Append the string
    NSString *myAppend = [self append:myText with:myString];
    [self displayAlertWithString:myAppend];
    
// Call Append Function
    NSString *testString = [self append:@"It displays. " with:@"Cool"];
    [self displayAlertWithString:testString];
    
// Calling the compare function
    int theCars1 = 3;
    int theCars2 = 3;
   BOOL myBool = [self compare:theCars1 secondInt:theCars2];
    NSString *compareBool = [NSString stringWithFormat:@"If car %d is the the car I fixed then car number %d is the repaired car. %@", theCars1, theCars2, myBool ? @"Yes" : @"No"];
    [self displayAlertWithString:compareBool];
    

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
