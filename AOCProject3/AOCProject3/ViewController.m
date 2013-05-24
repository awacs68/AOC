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
- (int)add:(NSInteger)carOne carTwo:(NSInteger)carTwo
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
    NSString *append3 = [append1 stringByAppendingString:appendString1];
    return append3;
    
    
}





- (void)viewDidLoad
{
    int cars = [self add:1 carTwo:2];
    NSLog(@"%d", cars);
    
    

    
    

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
