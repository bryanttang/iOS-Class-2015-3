//
//  ViewController.m
//  Calculator
//
//  Created by bryant tang on 3/11/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    cal = [Calculator new];
    
    //NSLog(@"%@",     cal.weakVariable);
    
    
    self.view.backgroundColor = [UIColor colorWithRed:0.3 green:0.1 blue:0.8 alpha:0.3];
    //self.view.alpha = 0.2;
    
    
    

    
}

- (IBAction)clickAdd:(id)sender{
    _result_l.text = @"";
    [cal setOpand1:_opand1.text];
    [cal setOpand2:_opand2.text];
    [cal saveResult:[cal add]];
    
    for (int i = 0; i < [cal getResult].count; i++) {
        _result_l.text = [NSString stringWithFormat:@"%@\r Result %d: %@",_result_l.text, i, [[cal getResult]objectAtIndex:i]];
        NSLog(@"%@", [NSString stringWithFormat:@"\r%@",[[cal getResult]objectAtIndex:i]]);
        
    }
    
}


- (IBAction)clickSub:(id)sender{
    
    _result_l.text = @"";
    [cal setOpand1:_opand1.text];
    [cal setOpand2:_opand2.text];
    [cal saveResult:[cal sub]];
    
//    for (int i = 0; i < [cal getResult].count; i++) {
//        _result_l.text = [NSString stringWithFormat:@"%@\r Result %d: %@",_result_l.text, i, [[cal getResult]objectAtIndex:i]];
//        NSLog(@"%@", [NSString stringWithFormat:@"\r%@",[[cal getResult]objectAtIndex:i]]);
//        
//    }
    
    //
    [[cal getResult] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        _result_l.text = [NSString stringWithFormat:@"%@\r Result %d: %@",_result_l.text, (int)idx, obj];
        
    }];

}

- (IBAction)clickCross:(id)sender{
    
    _result_l.text = @"";
    [cal setOpand1:_opand1.text];
    [cal setOpand2:_opand2.text];
    [cal saveResult:[cal cross]];

    
    for (int i = 0; i < [cal getResult].count; i++) {
        _result_l.text = [NSString stringWithFormat:@"%@\r Result %d: %@",_result_l.text, i, [[cal getResult]objectAtIndex:i]];
        NSLog(@"%@", [NSString stringWithFormat:@"\r%@",[[cal getResult]objectAtIndex:i]]);
        
    }

}

- (IBAction)clickDiv:(id)sender{
    
    _result_l.text = @"";
    [cal setOpand1:_opand1.text];
    [cal setOpand2:_opand2.text];
    [cal saveResult:[cal div]];

    
    for (int i = 0; i < [cal getResult].count; i++) {
        _result_l.text = [NSString stringWithFormat:@"%@\r Result %d: %@",_result_l.text, i, [[cal getResult]objectAtIndex:i]];
        NSLog(@"%@", [NSString stringWithFormat:@"\r%@",[[cal getResult]objectAtIndex:i]]);
        
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
