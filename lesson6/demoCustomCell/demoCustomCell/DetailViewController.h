//
//  DetailViewController.h
//  demoCustomCell
//
//  Created by bryant tang on 4/12/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (strong) NSDictionary *info;
@property (strong, nonatomic) IBOutlet UIImageView *headImg;
@property (strong, nonatomic) IBOutlet UILabel *emailTitle;
@property (strong, nonatomic) IBOutlet UITextView *detailText;
@end
