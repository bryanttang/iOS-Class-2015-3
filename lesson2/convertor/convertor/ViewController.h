//
//  ViewController.h
//  convertor
//
//  Created by bryant tang on 4/10/14.
//  Copyright (c) 2014 bryant. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong) IBOutlet UITextField *input;
@property (strong) IBOutlet UILabel *result;

- (IBAction)clickConvertor:(id)sender;

@end
