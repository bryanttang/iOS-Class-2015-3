//
//  ViewController.m
//  helloPickerView
//
//  Created by bryant tang on 4/8/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    options = [NSMutableArray arrayWithArray:@[@"apple", @"car",@"dog"]];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UI Handler
- (IBAction)clickDelete:(id)sender {
    NSInteger row = [_optionPickView selectedRowInComponent:0];
    
    [options removeObjectAtIndex:row];
    
    [_optionPickView reloadAllComponents];
    
    
}
- (IBAction)clickAdd:(id)sender {
    
    NSLog(@"%@", _additionOption.text);
    
    [options addObject:_additionOption.text];
    
    [_optionPickView reloadAllComponents];
    
}





#pragma mark - Delegate
//Delegate
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    NSLog(@"%ld", row);
    NSLog(@"%ld",component);
    
    _showLabel.text = [options objectAtIndex:row];
}





#pragma mark - DataSource
// DataSource


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}


- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return options.count;
}


- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [options objectAtIndex:row];
    
}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
    
    UILabel *option = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 50)];
    option.text =[options objectAtIndex:row];
    option.textColor = [UIColor redColor];
    option.textAlignment = NSTextAlignmentCenter;
    
    return option;
}































@end
