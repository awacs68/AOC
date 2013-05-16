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
    label = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 400.0f, 20.0f)];
    if (label != nil)
    {
        label.backgroundColor = [UIColor redColor];
        label.text = @"JavaScript 24-Hour Training";
        label.textAlignment = NSTextAlignmentCenter;
    }
    
    [self.view addSubview:label];
    
    // UILabel Author label
    UILabel *authorLabel;
    authorLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 30.0f, 400.0f, 20.0f)];
    if (authorLabel != nil)
    {
        authorLabel.backgroundColor = [UIColor blueColor];
        authorLabel.text = @"Mark McAninch";
        authorLabel.textAlignment = NSTextAlignmentCenter;
    }
    
    [self.view addSubview:authorLabel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
