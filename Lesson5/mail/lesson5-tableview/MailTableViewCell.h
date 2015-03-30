//
//  MailTableViewCell.h
//  lesson5-tableview
//
//  Created by bryant tang on 5/7/14.
//  Copyright (c) 2014 bryant. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MailTableViewCell : UITableViewCell
@property (strong) IBOutlet UILabel *sender;
@property (strong) IBOutlet UILabel *content;

@end
