//
//  ViewController.m
//  helloAnimation
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
    
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(respondsToTap:)];
    
    UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(respondsToSwipe:)];
    
    swipe.direction = UISwipeGestureRecognizerDirectionRight;
    
    [self.view addGestureRecognizer:tap];
    [self.view addGestureRecognizer:swipe];
    
    
    
    UIView *square = [[UIView alloc] initWithFrame:CGRectMake(200, 100, 50, 50)];
    square.backgroundColor = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
    
    [self.view addSubview:square];
    
    
//    [UIView animateWithDuration:1.0 animations:^{
////        square.transform = CGAffineTransformMakeTranslation(0, 190);
//        square.transform = CGAffineTransformMakeRotation(45*M_PI/180.0);
//    }];
    
    [UIView animateWithDuration:1.0 animations:^{
        square.transform = CGAffineTransformMakeTranslation(0, 190);
    } completion:^(BOOL finished) {
        
        
        [UIView animateWithDuration:1.5 animations:^{

            square.transform = CGAffineTransformConcat(square.transform,  CGAffineTransformMakeTranslation(-90, 0));
            
        } completion:^(BOOL finished) {
            
        }];
        
    }];

    
}


- (void)respondsToTap:(UIGestureRecognizer*)recognizer{
    
    NSLog(@"Respond to Tap");

}

- (void)respondsToSwipe:(UIGestureRecognizer*)recognizer{
    NSLog(@"Right");
}






















- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
