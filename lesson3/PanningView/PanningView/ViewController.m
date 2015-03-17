//
//  ViewController.m
//  PanningView
//
//  Created by bryant tang on 3/17/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(respondsToPan:)];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(respondsToTap:)];
    
    
    [self.view addGestureRecognizer:pan];
    [self.view addGestureRecognizer:tap];
}

- (void)respondsToPan:(UIPanGestureRecognizer*)recognizer{
    NSLog(@"pan");
    
    
    [UIView animateWithDuration:0.5 animations:^{
        _panningView.frame = CGRectMake(-300, 0, _panningView.frame.size.width, self.view.frame.size.height);
    }];
    
    
    
}

- (void)respondsToTap:(UIPanGestureRecognizer*)recognizer{
    NSLog(@"pan");
    
    
    [UIView animateWithDuration:0.5 animations:^{
        _panningView.frame = CGRectMake(-400, 0, _panningView.frame.size.width, self.view.frame.size.height);
    }];
}

- (IBAction)clickMenu:(id)sender {
    UIButton* btn = (UIButton *)sender;
    switch (btn.tag) {
        case 1:
            _context.text = @"Hello Batman";
            break;
        case 2:
            _context.text = @"Hello Superman";
            break;
        case 3:
            _context.text = @"Hello Ironman";
            break;
        case 4:
            _context.text = @"Hello Spiderman";
            break;
        default:
            break;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
