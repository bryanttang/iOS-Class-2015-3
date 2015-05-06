//
//  ViewController.m
//  gestureTest2
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
    
    UITapGestureRecognizer *tap =  [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(respondstoTap:)];
    tap.numberOfTapsRequired = 2;
    [self.view addGestureRecognizer:tap];
    
    
    UISwipeGestureRecognizer *swipUp = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(respondsToSwipe:)];
    swipUp.direction = UISwipeGestureRecognizerDirectionUp ;
    [self.view addGestureRecognizer:swipUp];
    
    UISwipeGestureRecognizer *swipDown = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(respondsToSwipe:)];
    swipDown.direction = UISwipeGestureRecognizerDirectionDown;
    [self.view addGestureRecognizer:swipDown];
    
    
    
    moveLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 100, 100)];
    moveLabel.backgroundColor = [UIColor redColor];
    
    
    [self.view addSubview:moveLabel];
    
    
//    [UIView animateWithDuration:2.0 animations:^{
//        
//        //moveLabel.frame = CGRectMake(10, 110, 200, 200);
//        //moveLabel.backgroundColor = [UIColor blueColor];
//        //moveLabel.transform = CGAffineTransformMakeTranslation(10, 50);
//        moveLabel.transform = CGAffineTransformMakeRotation(-90 * M_PI / 180);
//    }];
    
//    [UIView animateWithDuration:2.0 delay:1.0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
//        moveLabel.backgroundColor = [UIColor blueColor];
//    } completion:^(BOOL finished) {
//        
//    }];
    
    
    
    
    
}


- (void)respondstoTap:(UITapGestureRecognizer*)recognizer{
    
    NSLog(@"You tap the view: %d", (int)recognizer.numberOfTouches);

}

- (void)respondsToSwipe:(UISwipeGestureRecognizer*)recognizer{
    
    if (recognizer.direction == UISwipeGestureRecognizerDirectionUp) {
        NSLog(@"I swipe Up");
        [UIView animateWithDuration:0.5 animations:^{
            moveLabel.transform = CGAffineTransformMakeTranslation(0, -50);
        }];

    }
    if (recognizer.direction == UISwipeGestureRecognizerDirectionDown) {
        NSLog(@"I swipe Down");
        [UIView animateWithDuration:0.5 animations:^{
            moveLabel.transform = CGAffineTransformConcat(moveLabel.transform, CGAffineTransformMakeTranslation(0, 50));
        }];
    }

}














- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
