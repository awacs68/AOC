//
//  ViewController.m
//  AOCProject4
//
//  Created by Mark A McAninch on 5/27/13.
//  Copyright (c) 2013 Mark A McAninch. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
// Background Color
  //  self.view.backgroundColor = [UIColor whiteColor];
// UserName 
    UILabel *userLabel;
    userLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 32, 90, 30)];
    if (userLabel != nil)
    {
        userLabel.text = @"Username:";
        [self.view addSubview:userLabel];
    }
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(90.0f, 32.0f, 220.0f, 30.0f)];
    if (textField != nil)
    {
        textField.borderStyle = UIButtonTypeRoundedRect;
        [self.view addSubview:textField];
    }
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (button != nil)
    {
        button.frame = CGRectMake(210.0f, 80.0f, 100.0f, 40.0f);
        [button setTitle:@"Login" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)onClick
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
