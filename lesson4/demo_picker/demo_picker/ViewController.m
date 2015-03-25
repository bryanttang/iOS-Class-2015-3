//
//  ViewController.m
//  demo_picker
//
//  Created by bryant tang on 3/25/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    units = @[@"kilogram",@"pound",@"gram"];
    
}

- (IBAction)convert:(id)sender {
    //NSLog(@"%@", _leftUnit.titleLabel.text);
    if ([_leftUnit.titleLabel.text isEqualToString:@"kilogram"] && [_rightUnit.titleLabel.text isEqualToString:@"pound"]) {
        _ratio.text = [NSString stringWithFormat:@"%g", 1*2.20462262];
    }
    
    if ([_leftUnit.titleLabel.text isEqualToString:@"kilogram"] && [_rightUnit.titleLabel.text isEqualToString:@"gram"]) {
        _ratio.text = [NSString stringWithFormat:@"%g", 1*1000.0];
    }
    
}

- (IBAction)changeLeftUnit:(id)sender {
    NSLog(@"Left");
    choose = @"left";
}

- (IBAction)changeRightUnit:(id)sender {
    NSLog(@"right");
    choose = @"right";
}

- (NSInteger)numberOfComponentsInPickerView:
(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [units count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component
{
    return units[row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if ([choose isEqualToString:@"left"]) {
        [_leftUnit setTitle:[units objectAtIndex:row] forState:UIControlStateNormal] ;
        
    }
    if ([choose isEqualToString:@"right"]) {
        [_rightUnit setTitle:[units objectAtIndex:row] forState:UIControlStateNormal] ;
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
