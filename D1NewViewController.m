//
//  D1NewViewController.m
//  CFPosts
//
//  Created by Brad on 9/10/13.
//  Copyright (c) 2013 Brad. All rights reserved.
//

#import "D1NewViewController.h"

@interface D1NewViewController () <UITextFieldDelegate>

@property (nonatomic,strong) NSArray *enteredData;


@end

@implementation D1NewViewController

-(IBAction)donePressed:(id)sender
{
    self.enteredData = [[NSArray alloc]initWithObjects:self.userNameTextField.text,self.titleTextField.text, self.contentTextField.text, self.timeStampTextField.text, nil];
    if([self.delegate respondsToSelector:@selector(savePost:)])
    {
        [self.delegate savePost:self.enteredData];
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    NSLog(@"textFieldShouldReturn:");
    
    if (textField.tag == 0) {
        UITextField *titleTextField = (UITextField *)[self.view viewWithTag:1];
        [titleTextField becomeFirstResponder];
    }
    if (textField.tag ==1) {
        UITextField *contentTextField = (UITextField *)[self.view viewWithTag:2];
        [contentTextField becomeFirstResponder];
        
    }
    if (textField.tag ==2) {
        UITextField *timeTextField = (UITextField *)[self.view viewWithTag:3];
        [timeTextField becomeFirstResponder];
        
    }
    else {
        [textField resignFirstResponder];
    }
    return YES;
}

@end
