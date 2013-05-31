//
//  ViewController.h
//  AOCProject4
//
//  Created by Mark A McAninch on 5/27/13.
//  Copyright (c) 2013 Mark A McAninch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate>
{
    UILabel *infoLabel;
    UILabel *nameLabel;
    UITextField *textField;
}
-(void)onClick:(UIButton*)button;
@end
