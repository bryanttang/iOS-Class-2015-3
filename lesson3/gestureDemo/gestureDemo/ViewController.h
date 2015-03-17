//
//  ViewController.h
//  gestureDemo
//
//  Created by bryant tang on 3/15/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    CGPoint pre_point;
    CGPoint cur_point;

}
@property (strong, nonatomic) IBOutlet UIImageView *arrow;

@end

