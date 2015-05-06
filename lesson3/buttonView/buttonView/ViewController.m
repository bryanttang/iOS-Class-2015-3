//
//  ViewController.m
//  buttonView
//
//  Created by bryant tang on 3/18/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(20, 40, 100, 50);
    
    [btn setTitle:@"Say Hello" forState:UIControlStateNormal];
    
    btn.backgroundColor = [UIColor colorWithWhite:0.4 alpha:0.9];
    
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    btn.layer.cornerRadius = 10.0;
    
    [self.view addSubview:btn];
    
    [btn addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    

    label1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 150, 50)];
    label1.backgroundColor = [UIColor colorWithWhite:0.1 alpha:0.9];
    label1.textColor = [UIColor whiteColor];
    [self.view addSubview:label1];

    
    
    
}

- (void)clickButton:(UIButton*) button {
    label1.text = @"hello";
}

















- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
