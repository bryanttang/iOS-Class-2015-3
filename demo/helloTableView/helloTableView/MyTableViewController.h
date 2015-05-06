//
//  MyTableViewController.h
//  helloTableView
//
//  Created by bryant tang on 4/8/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableViewController : UITableViewController
{
    NSMutableArray *contactDS_groupA;
    NSMutableArray *contactDS_groupB;
    NSArray *email;
    
}
@property (strong, nonatomic) IBOutlet UITableView *myTableView;
@end
