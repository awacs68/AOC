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
    
        
    // Background color
    self.view.backgroundColor = [UIColor colorWithRed:0.588 green:0.541 blue:0.561 alpha:1]; /*#968a8f*/
    
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
        authorName.text = @"Jermey Mcpeak";
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
        dateLabel.text = @"2011";
        dateLabel.textAlignment = NSTextAlignmentLeft;
        dateLabel.textColor = [UIColor greenColor];
    }
    // Add the Subview to execute
    [self.view addSubview:dateLabel];
    
    // UILabel Summary label
    UILabel *summaryLabel;
    summaryLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 90, 100, 30)];
    if (summaryLabel != nil)
    {
        summaryLabel.backgroundColor = [UIColor yellowColor];
        summaryLabel.text = @"Summary";
        summaryLabel.textAlignment = NSTextAlignmentLeft;
        summaryLabel.textColor = [UIColor cyanColor];
    }
    // Add the Subview to execute
    [self.view addSubview:summaryLabel];
    
    // UILabel Summary Box label
    UILabel *summaryBox;
    summaryBox = [[UILabel alloc] initWithFrame:CGRectMake(0, 125, 400, 200)];
    if (summaryBox != nil)
    {
        summaryBox.backgroundColor = [UIColor darkGrayColor];
        summaryBox.text = @"JavaScript is the most popular programming language in the world. It is used on all major Internet sites, and even those not so important. Whether you make a purchase from an online retailer, manage your funds using your bank's website, visit a news site to get caught up on current events, or simply read a blog written by one of the millions of bloggers worlwide, you have experienced JavaScript in some way.";
        summaryBox.textAlignment = NSTextAlignmentCenter;
        summaryBox.textColor = [UIColor blackColor];
        summaryBox.numberOfLines = 20;
    }
    // Add the Subview to execute
    [self.view addSubview:summaryBox];
    
    // UILabel List Items label
    UILabel *listLabel;
    listLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 325, 100, 30)];
    if (listLabel != nil)
    {
        listLabel.backgroundColor = [UIColor colorWithRed:0 green:0.188 blue:0.012 alpha:1] /*#003003*/;
        listLabel.text = @"List of Items";
        listLabel.textAlignment = NSTextAlignmentLeft;
        listLabel.textColor = [UIColor cyanColor];
    }
    // Add the Subview to execute
    [self.view addSubview:listLabel];
    
    NSString *book1 = @"JavaScript";
    NSString *book2 = @" Arrays";
    NSString *book3 = @" Objects";
    NSString *book4 = @" Strings";
    NSString *book5 = @" and Methods";
    
    NSArray *bookItems = [[NSArray alloc] initWithObjects:book1, book2, book3, book4, book5, nil];
    NSMutableString * items = [[NSMutableString alloc] initWithCapacity:5];
    for (int i = 0; i < bookItems.count; i++) {
        [items appendString: [bookItems objectAtIndex: i]];
        if (i < bookItems.count -1) {
            [items appendString:@","];
        }
    UILabel *listItemsLabel;
        listItemsLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 360, 300, 60)];
        if (listItemsLabel != nil)
        {
            listItemsLabel.backgroundColor = [UIColor colorWithRed:0.227 green:0.247 blue:0.251 alpha:1]; /*#3a3f40*/
            listItemsLabel.text = items;
            listItemsLabel.textAlignment = NSTextAlignmentCenter;
            listItemsLabel.textColor = [UIColor colorWithRed:0.361 green:0.824 blue:0.949 alpha:1] /*#5cd2f2*/;
            listItemsLabel.numberOfLines = 20;        }
        // Add the Subview to execute
        [self.view addSubview:listItemsLabel];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
