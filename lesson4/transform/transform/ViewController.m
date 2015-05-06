//
//  ViewController.m
//  transform
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
    
    UIView *sq = [[UIView alloc] initWithFrame:CGRectMake(200, 50, 50, 50)];
    sq.backgroundColor = [UIColor redColor];
    
    __block CGAffineTransform first;
    [self.view addSubview:sq];
    
    [UIView animateWithDuration:1.0 animations:^{
        first = CGAffineTransformTranslate(sq.transform, 0, 50);
//        sq.transform = first;
        CGAffineTransform rotate = CGAffineTransformMakeRotation (0.6);
        CGAffineTransform translate = CGAffineTransformMakeTranslation(0, 150);
        //sq.transform = CGAffineTransformConcat(translate,rotate153guna1);
    } completion:^(BOOL finished) {

        [UIView animateWithDuration:2.0 animations:^{
            
//            sq.transform = CGAffineTransformRotate(first, 180*M_PI/180);
            //sq.transform = cgaf
        } completion:^(BOOL finished) {
            
        }];
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
