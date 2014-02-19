//
//  HWViewController.m
//  Hello World
//
//  Created by Rene Alejandro Basurto Quijada on 10/02/14.
//  Copyright (c) 2014 Rene A Basurto Q. All rights reserved.
//

#import "HWViewController.h"

@interface HWViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *labelHello;
@property (weak, nonatomic) IBOutlet UITextField *textSaluda;

@end

@implementation HWViewController

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)botonSaluda:(id)sender
{
    if (![self.textSaluda.text  isEqual: @""]) {
        self.labelHello.text = [NSString stringWithFormat:@"Hello %@",
                                self.textSaluda.text];
    }
}


@end
