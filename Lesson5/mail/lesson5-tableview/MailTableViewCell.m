//
//  MailTableViewCell.m
//  lesson5-tableview
//
//  Created by bryant tang on 5/7/14.
//  Copyright (c) 2014 bryant. All rights reserved.
//

#import "MailTableViewCell.h"

@implementation MailTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
