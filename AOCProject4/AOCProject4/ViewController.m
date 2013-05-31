//
//  ViewController.m
//  AOCProject4
//
//  Created by Mark A McAninch on 5/27/13.
//  Copyright (c) 2013 Mark A McAninch. All rights reserved.
//

#import "ViewController.h"

#define BUTTON_ZERO 0
#define DATEBUTTON_ONE 1
#define INFOBUTTON_TWO 2
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
// Background Color
    self.view.backgroundColor = [UIColor whiteColor];
// User Name Label
    UILabel *userLabel;
    userLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 15, 90, 30)];
    if (userLabel != nil)
    {
        userLabel.text = @"Username:";
        [self.view addSubview:userLabel];
    }
    // User Name Textfield
    textField = [[UITextField alloc] initWithFrame:CGRectMake(90.0f, 15.0f, 220.0f, 30.0f)];
    if (textField != nil)
    {
        textField.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:textField];
    }
    // Login Button
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (button != nil)
    {
        button.frame = CGRectMake(210.0f, 55.0f, 100.0f, 40.0f);
        button.tintColor = [UIColor orangeColor];
        [button addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];        [button setTitle:@"Login" forState:UIControlStateNormal];
        button.tag = BUTTON_ZERO;
        [self.view addSubview:button];
    }
    // User Name Display
    
    nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 110.0f, 320.0f, 65.0f)];
    if (nameLabel != nil)
    {
        nameLabel.textColor = [UIColor blueColor];
        nameLabel.text = @"Please Enter Username";
        nameLabel.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:nameLabel];
    }
    // Date Button
    UIButton *dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (dateButton != nil)
    {
        dateButton.frame = CGRectMake(10.0f, 240.0f, 100.0f, 40.0f);
        dateButton.tintColor = [UIColor orangeColor];
        [dateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
        dateButton.tag = DATEBUTTON_ONE;
        [self.view addSubview:dateButton];
    }
    // Information Button
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    if (infoButton != nil)
    {
        infoButton.frame = CGRectMake(10.0f, 340.0f, 25.0f, 25.0f);
        infoButton.tag = INFOBUTTON_TWO;
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:infoButton];
    }
    // Info Label
    infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 380.0f, 320.0f, 75.0f)];
    if (infoLabel != nil)
    {
        infoLabel.textColor = [UIColor redColor];
        infoLabel.numberOfLines = 2;
    
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
    // On Click
-(void)onClick:(UIButton*)button;
    
{
    if (button.tag == BUTTON_ZERO)
    {
        NSString *logName = [textField text];
        if (logName.length > 0) {
            NSString *logInfo = [[NSString alloc] initWithFormat:@"User: %@ has been logged in", logName];
            nameLabel.text = logInfo;
            nameLabel.textColor = [UIColor yellowColor];
            nameLabel.backgroundColor = [UIColor blackColor];
        }else{
            nameLabel.text = @"Username cannot be empty!";
            nameLabel.textColor = [UIColor redColor];
        }
    }
    // Date Display
    else if (button.tag == DATEBUTTON_ONE)
    {
    NSDate *realDate = [NSDate date];
        
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        
        if (dateFormatter != nil)
   {
            [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
            [dateFormatter setTimeStyle:NSDateFormatterFullStyle];
            NSString *getDate = [dateFormatter stringFromDate:realDate];
            //NSLog(@"NSDate");
        
     UIAlertView *myAlert = [[UIAlertView alloc] initWithTitle:@"Date & Time" message:getDate delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
            
       if (myAlert != nil)
            {
                [myAlert show];
            }
    }
        
    }
    else if (button.tag == INFOBUTTON_TWO)
    {
        // Defining Info Label
        infoLabel.text = @"This application was created by: Mark McAninch";
        infoLabel.backgroundColor = [UIColor whiteColor];
        [self.view addSubview:infoLabel];
       // NSLog(@"It worked");
    }
   
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
