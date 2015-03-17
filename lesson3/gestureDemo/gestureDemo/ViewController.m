//
//  ViewController.m
//  gestureDemo
//
//  Created by bryant tang on 3/15/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipHandler:)];
    
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    
    [self.view addGestureRecognizer:swipeLeft];
    
    
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipHandler:)];
    
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    
    [self.view addGestureRecognizer:swipeRight];
    
    UISwipeGestureRecognizer *swipeUp = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipHandler:)];
    
    swipeUp.direction = UISwipeGestureRecognizerDirectionUp;
    
    [self.view addGestureRecognizer:swipeUp];
    
    UISwipeGestureRecognizer *swipeDown = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipHandler:)];
    
    swipeDown.direction = UISwipeGestureRecognizerDirectionDown;
    
    [self.view addGestureRecognizer:swipeDown];
    
    
    
    //#### Long Press
    UILongPressGestureRecognizer *longPressG = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(respondsToLongPress:)];
    
    longPressG.minimumPressDuration = 0.2;
    
    [self.view addGestureRecognizer:longPressG];
    
}

- (void)respondsToLongPress:(UILongPressGestureRecognizer*)LPrecognizer{
//    NSLog(@"IN Long Press");
    if (LPrecognizer.state == UIGestureRecognizerStateBegan) {
        NSLog(@"long press Began");
        [UIView animateWithDuration:1.0 animations:^{
            _arrow.image = [UIImage imageNamed:@"arrow_r"];
        }];
        
        CGPoint point = [LPrecognizer locationInView:self.view];
        [UIView animateWithDuration:0.4 animations:^{
            _arrow.center = point;
        }];
        
        pre_point = point;
    }
    if (LPrecognizer.state == UIGestureRecognizerStateChanged){
        NSLog(@"Move");
        
        CGPoint point = [LPrecognizer locationInView:self.view];
        _arrow.center = point;
        
        cur_point = point;
//        float angle = atan2f(cur_point.x - pre_point.x, cur_point.y - pre_point.y);
//        float degree = angle * (180.0 / M_PI);
//        degree = (degree > 0.0 ? degree : (360.0 + degree));
//        NSLog(@"degree %g", degree);
//        _arrow.transform = CGAffineTransformConcat(_arrow.transform, CGAffineTransformMakeRotation(degree * M_PI / 180)) ;
        
        
    }
    
    if (LPrecognizer.state == UIGestureRecognizerStateEnded) {
        NSLog(@"END");
        [UIView animateWithDuration:1.0 animations:^{
            _arrow.image = [UIImage imageNamed:@"arrow"];
        }];
    }
    
    
    
    
}

- (void)swipHandler:(UISwipeGestureRecognizer*)recognizer{
    
    switch (recognizer.direction) {
        case UISwipeGestureRecognizerDirectionLeft:
        {
            NSLog(@"Left");
            [UIView animateWithDuration:0.3 animations:^{
                _arrow.transform = CGAffineTransformMakeRotation(-90* M_PI/180);// CGAffineTransformConcat(_narrow.transform, ) ;
            }];
            
        }
            break;
        case UISwipeGestureRecognizerDirectionRight:
        {
            [UIView animateWithDuration:0.3 animations:^{
                _arrow.transform = CGAffineTransformMakeRotation(90* M_PI/180);//
            }];
            NSLog(@"Right");
        }
            break;
        case UISwipeGestureRecognizerDirectionUp:
        {
            NSLog(@"Up");
            [UIView animateWithDuration:0.3 animations:^{
                _arrow.transform = CGAffineTransformMakeRotation(0* M_PI/180);//
            }];
            
        }
            break;
        case UISwipeGestureRecognizerDirectionDown:
        {
            NSLog(@"Down");
            [UIView animateWithDuration:0.3 animations:^{
                _arrow.transform = CGAffineTransformMakeRotation(180* M_PI/180);//
            }];
        }
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
