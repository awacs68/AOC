//
//  ViewController.m
//  AOCProject2
//
//  Created by Mark A McAninch on 5/14/13.
//  Copyright (c) 2013 Mark A McAninch. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    // 
    // Background color
    self.view.backgroundColor = [UIColor grayColor];
    
    // UILabel Title label
    UILabel *label;
    label = [[UILabel alloc] initWithFrame:CGRectMake(0, 10, 400, 20)];
    if (label != nil)
    {
        label.backgroundColor = [UIColor redColor];
        label.text = @"JavaScript 24-Hour Training";
        label.textAlignment = NSTextAlignmentCenter;
        label.textColor = [UIColor whiteColor];
    }
    // Add the Subview to execute 
    [self.view addSubview:label];
    
    // UILabel Author label
    UILabel *authorLabel;
    authorLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 30, 100, 30)];
    if (authorLabel != nil)
    {
        authorLabel.backgroundColor = [UIColor blueColor];
        authorLabel.text = @"Author:";
        authorLabel.textAlignment = NSTextAlignmentRight;
        authorLabel.textColor = [UIColor lightGrayColor];
    }
    // Add the Subview to execute
    [self.view addSubview:authorLabel];
    
    // UILabel Author label
    UILabel *authorName;
    authorName = [[UILabel alloc] initWithFrame:CGRectMake(100, 30, 300, 30)];
    if (authorName != nil)
    {
        authorName.backgroundColor = [UIColor greenColor];
        authorName.text = @"Jermey Mcpeak:";
        authorName.textAlignment = NSTextAlignmentLeft;
        authorName.textColor = [UIColor magentaColor];
    }
    // Add the Subview to execute
    [self.view addSubview:authorName];
    
    // UILabel Published label
    UILabel *publishLabel;
    publishLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 60, 100, 30)];
    if (publishLabel != nil)
    {
        publishLabel.backgroundColor = [UIColor purpleColor];
        publishLabel.text = @"Published:";
        publishLabel.textAlignment = NSTextAlignmentRight;
        publishLabel.textColor = [UIColor brownColor];
    }
    // Add the Subview to execute
    [self.view addSubview:publishLabel];
    
    // UILabel Date label
    UILabel *dateLabel;
    dateLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 60, 300, 30)];
    if (dateLabel != nil)
    {
        dateLabel.backgroundColor = [UIColor orangeColor];
        dateLabel.text = @"Date:";
        dateLabel.textAlignment = NSTextAlignmentLeft;
        dateLabel.textColor = [UIColor greenColor];
    }
    // Add the Subview to execute
    [self.view addSubview:dateLabel];
    
    // UILabel Summary label
 /*   UILabel *summaryLabel;
    summaryLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 60, 100, 30)];
    if (summaryLabel != nil)
    {
        summaryLabel.backgroundColor = [UIColor yellowColor];
        summaryLabel.text = @"Summary";
        summaryLabel.textAlignment = NSTextAlignmentLeft;
        summaryLabel.textColor = [UIColor greenColor];
    }
    // Add the Subview to execute
    [self.view addSubview:summaryLabel]; */
}
    
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
