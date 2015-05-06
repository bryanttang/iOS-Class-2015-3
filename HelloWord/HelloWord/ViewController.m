//
//  ViewController.m
//  HelloWord
//
//  Created by bryant tang on 3/3/15.
//  Copyright (c) 2015 bryant tang. All rights reserved.
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
- (IBAction)sayHello:(UIButton *)sender
{
    _wordTextField.text = @"Hello! Every One!";
}

@end
