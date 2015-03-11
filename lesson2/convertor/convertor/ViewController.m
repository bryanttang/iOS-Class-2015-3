//
//  ViewController.m
//  convertor
//
//  Created by bryant tang on 4/10/14.
//  Copyright (c) 2014 bryant. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [self convertUSDToMOP];
    
    return YES;
}

- (void)convertUSDToMOP{
    //hide the keyboard
    [self.input resignFirstResponder];
    
    //Return converting result to label
    CGFloat usd = [self.input.text floatValue];
    CGFloat mop = usd * 7.98746;
    
    self.result.text = [NSString stringWithFormat:@"MOP = %f", mop];
}

- (IBAction)clickConvertor:(id)sender{
    [self convertUSDToMOP];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
