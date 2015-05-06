//
//  ViewController.h
//  DemoWebView
//
//  Created by bryant tang on 5/6/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIWebViewDelegate, UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UIWebView *myWebView;

@property (strong, nonatomic) IBOutlet UITextField *urlInput;

@end

