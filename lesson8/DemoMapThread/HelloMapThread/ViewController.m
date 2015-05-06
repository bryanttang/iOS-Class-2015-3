//
//  ViewController.m
//  HelloMapThread
//
//  Created by bryant tang on 5/3/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"Start");
    
//    NSThread *t1 = [[NSThread alloc] initWithTarget:self selector:@selector(waitAndPrint:) object:nil];
//    
//    [t1 start];
    
    
    dispatch_queue_t processQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(processQueue, ^{
        [self waitAndPrint:nil];
    });
    
    //[self waitAndPrint:nil];
    [self mainPrint:nil];
    
    
}

- (void) waitAndPrint:(id)obj{
    
    sleep(5);
    NSLog(@"Thread sleep");
    
}

- (void) mainPrint:(id)obj{
    sleep(10);
    NSLog(@"Main sleep");
    
}

//- ()

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
