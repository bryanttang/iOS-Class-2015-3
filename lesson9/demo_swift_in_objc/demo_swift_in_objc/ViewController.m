//
//  ViewController.m
//  demo_swift_in_objc
//
//  Created by bryant tang on 5/20/15.
//  Copyright (c) 2015 cpttm. All rights reserved.
//

#import "ViewController.h"
#import "demo_swift_in_objc-Swift.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MyObject *object_a = [[MyObject alloc] init];
    
    [object_a printHello];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
