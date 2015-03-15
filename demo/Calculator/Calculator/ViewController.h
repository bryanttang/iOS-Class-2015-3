//
//  ViewController.h
//  Calculator
//
//  Created by bryant tang on 3/11/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Calculator.h"

@interface ViewController : UIViewController
{
    Calculator *cal;
}
@property (strong) IBOutlet UILabel *sign;
@property (strong) IBOutlet UITextField *opand1;
@property (strong) IBOutlet UITextField *opand2;
@property (strong) IBOutlet UILabel *result_l;
@end

