//
//  ViewController.m
//  demo_textView
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
    
    
}

-(void)textViewDidBeginEditing:(UITextView *)textView{
    NSLog(@"Begin Edit");

    
//    [UIView animateWithDuration:0.6 delay:0.0 options:UIViewAnimationOptionCurveLinear animations:^{
//        textView.transform = CGAffineTransformMakeTranslation(0, -100);
//    } completion:^(BOOL finished) {
//        
//    }];
    
    [UIView animateWithDuration:0.6 delay:0.0 usingSpringWithDamping:0.1 initialSpringVelocity:9.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        textView.transform = CGAffineTransformMakeTranslation(0, -100);
        
    } completion:^(BOOL finished) {
        
    }];
    
}

-(void)textViewDidEndEditing:(UITextView *)textView{
    NSLog(@"End Edit");
    [UIView animateWithDuration:0.6 delay:0.0 options:UIViewAnimationOptionCurveLinear animations:^{
        textView.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {

    }];
    
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    
    
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    return YES;
}

-(void)textViewDidChange:(UITextView *)textView{
    textView.text = [textView.text lowercaseString];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
