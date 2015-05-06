//
//  MyTableViewController.m
//  helloTableView
//
//  Created by bryant tang on 4/8/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import "MyTableViewController.h"

@interface MyTableViewController ()

@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSDictionary *mail0 = @{@"name":@"bryant",
                           @"description":@"This is bryant's email",
                           @"tag":@"important"};
    
    NSDictionary *mail1 = @{@"name":@"Anne",
                           @"description":@"This is bryant's email",
                           @"tag":@"important"};
    
    NSDictionary *mail2 = @{@"name":@"Peter",
                           @"description":@"This is bryant's email",
                           @"tag":@"Unread"};
    
    email = @[mail0, mail1, mail2];
    
    
    
    
    
    
    
    _myTableView.contentInset = UIEdgeInsetsMake(20, 0, 0, 0);
    
    
    
    contactDS_groupA = [NSMutableArray arrayWithArray:@[@"Janet",@"Bryant",@"Jessie",@"Alex"]];
    contactDS_groupB = [NSMutableArray arrayWithArray:@[@"Peter",@"Michelle",@"James"]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if ([indexPath section] == 0) {
        return 80.0;
    }
    if (indexPath.section == 1) {
        return 40.0;
    }
    return 80.0;
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    if (section == 0) {
        return email.count;
    }
    if (section == 1) {
        return contactDS_groupB.count;
    }
    
    return 0;
}

- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return @"Email";
    }
    if (section == 1) {
        return @"Friends";
    }
    return nil;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSInteger section = [indexPath section];
    NSInteger row = [indexPath row];

    
    UITableViewCell *cell;
    
    if (section == 0) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"cell_type_1" forIndexPath:indexPath];
        
        
        NSDictionary *mail = [email objectAtIndex:row];
        
        cell.textLabel.text = [mail valueForKey:@"name"];
        cell.detailTextLabel.text = [mail valueForKey:@"description"];
        
        
        
        
        
        
        
    }
    if (section == 1) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"cell_type_2" forIndexPath:indexPath];
        cell.textLabel.text = [contactDS_groupB objectAtIndex:row];
    }
    
    
    
    return cell;
}


#pragma mark - Delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if ([indexPath section] == 0) {
        NSLog(@"%@", [contactDS_groupA objectAtIndex:indexPath.row]);
    }
    if (indexPath.section == 1) {
         NSLog(@"%@", [contactDS_groupB objectAtIndex:indexPath.row]);
    }
    
    
    

}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
