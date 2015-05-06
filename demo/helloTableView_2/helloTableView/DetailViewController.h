//
//  DetailViewController.h
//  helloTableView
//
//  Created by bryant tang on 4/22/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (strong) NSDictionary *info;
@property (strong, nonatomic) IBOutlet UIImageView *headerimg;
@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UILabel *etitle;
@property (strong, nonatomic) IBOutlet UILabel *subtitle;

@end
