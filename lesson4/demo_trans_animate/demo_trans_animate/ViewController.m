//
//  ViewController.m
//  demo_trans_animate
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
    
    NSLog(@"");
    
    UIView *square = [[UIView alloc] initWithFrame:CGRectMake(100, 50, 50, 50)];
    square.backgroundColor = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
    
    [self.view addSubview:square];
    
//    [UIView animateWithDuration:1.0 animations:^{
////        square.backgroundColor = [UIColor blackColor];
//        square.transform = CGAffineTransformMakeTranslation(0, 200);
//    }];
    
    
//    [UIView animateWithDuration:1.0 delay:1.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
//        square.transform = CGAffineTransformMakeTranslation(0, 200);
//    } completion:^(BOOL finished) {
//        
//    }];
    
    [UIView animateWithDuration:2.0 delay:1.0 usingSpringWithDamping:0.2 initialSpringVelocity:9.0 options:UIViewAnimationOptionCurveLinear animations:^{
            square.transform = CGAffineTransformMakeTranslation(0, 200);
    } completion:^(BOOL finished) {
        
    }];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
