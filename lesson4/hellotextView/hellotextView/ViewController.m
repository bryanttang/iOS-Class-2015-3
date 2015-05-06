//
//  ViewController.m
//  hellotextView
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
    units = @[@"Car",@"Bus",@"Motor"];
    
    
}

//DataSource
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
  
    return 3;
}

- (NSInteger)numberOfComponentsInPickerView:
(UIPickerView *)pickerView
{
    return 1;
}

- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [units objectAtIndex:row];
}

//Delegate
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSLog(@"%@", [units objectAtIndex:row]);

}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)textViewDidBeginEditing:(UITextView *)textView{
    NSLog(@"Begin");
    textView.textColor = [UIColor redColor];
    
    [UIView animateWithDuration:1.0 delay:0.5 usingSpringWithDamping:0.1 initialSpringVelocity:9.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        textView.transform = CGAffineTransformMakeTranslation(0, -150);

    } completion:^(BOOL finished) {
        
    }];
    
    
    
    
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    
    
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        textView.textColor = [UIColor blackColor];
        textView.transform = CGAffineTransformIdentity;
        return NO;
    }
    
    return YES;
}






















@end
