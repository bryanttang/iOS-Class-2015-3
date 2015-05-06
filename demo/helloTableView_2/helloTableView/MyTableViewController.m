//
//  MyTableViewController.m
//  helloTableView
//
//  Created by bryant tang on 4/22/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import "MyTableViewController.h"
#import "EmailTableViewCell.h"
#import "DetailViewController.h"


@interface MyTableViewController ()

@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Email box";
    
    person = @[@"Jone",@"Peter",@"Jessie"];
    
    email = [NSMutableArray new];
    
    NSDictionary *mail1 = @{@"name":@"Bryant",
                            @"img":@"bryant",
                            @"eTitle":@"Lorem Ipsum is simply dummy text of the printing and typesetting ",
                            @"eSubtitle":@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. "};
    
    [email addObject:mail1];
    
    NSDictionary *mail2 = @{@"name":@"Judy",
                            @"img":@"judy",
                            @"eTitle":@"Lorem Ipsum is simply dummy text of the printing and typesetting ",
                            @"eSubtitle":@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. "};
    
    [email addObject:mail2];
    
    NSDictionary *mail3 = @{@"name":@"Steve",
                            @"img":@"steve",
                            @"eTitle":@"Lorem Ipsum is simply dummy text of the printing and typesetting ",
                            @"eSubtitle":@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. "};
    
    [email addObject:mail3];
    
    
    
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSLog(@"Trigger Push");
    
    if ([segue.identifier isEqualToString:@"detailinfo"]) {
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        NSInteger row = [indexPath row];
        
        
        DetailViewController *detailViewController = segue.destinationViewController;
        detailViewController.info = [email objectAtIndex:row];
        
        
    }
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    
    return [email count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 120.0;

}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSInteger row = [indexPath row];
    //NSInteger section = [indexPath section];
    EmailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellA" forIndexPath:indexPath];
    
    
    NSString *img = [[email objectAtIndex:row] objectForKey:@"img"];
    NSString *title = [[email objectAtIndex:row] objectForKey:@"eTitle"];
    NSString *subtitle = [[email objectAtIndex:row] objectForKey:@"eSubtitle"];
    
    cell.headerimg.image = [UIImage imageNamed:img];
    cell.eTitle.text = title;
    cell.eSubtitle.text = subtitle;
    
    
    return cell;
    
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
