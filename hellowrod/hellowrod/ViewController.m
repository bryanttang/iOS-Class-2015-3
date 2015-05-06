//
//  ViewController.m
//  hellowrod
//
//  Created by bryant tang on 3/4/15.
//  Copyright (c) 2015 bryant tang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _textFieldOne.text = @"hello word!";
    

}


- (IBAction)saySomething:(id)sender {
    _textFieldOne.text = @"Good bye!";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

@end
