//
//  ViewController.m
//  Converter
//
//  Created by bryant tang on 3/11/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convert:(id)sender {
    //NSLog(@"Click Convert : %f" , 12.0 );
    
    float inputFloat = [_moneyInputBox.text floatValue];
    
    _outputBox.text = [NSString stringWithFormat:@"%f",inputFloat * 7.9] ;

    
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    //NSLog(@"Enter");
    
    float inputFloat = [_moneyInputBox.text floatValue];
    
    _outputBox.text = [NSString stringWithFormat:@"%f",inputFloat * 7.9] ;
    
    _moneyInputBox.textColor = [UIColor colorWithRed:255/255.0 green:1/255.0 blue:1/255.0 alpha:0.5];
    
    return YES;
}













@end
