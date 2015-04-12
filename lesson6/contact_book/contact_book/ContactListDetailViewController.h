//
//  ContactListDetailViewController.h
//  contact_book
//
//  Created by bryant tang on 5/12/14.
//  Copyright (c) 2014 bryant. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContactListDetailViewController : UIViewController
@property (nonatomic, strong) IBOutlet UILabel *name;
@property (strong) IBOutlet UILabel *tel;
@property (strong) IBOutlet UILabel *email;
@property (strong) NSDictionary *info;
@end
