//
//  MyTableViewController.m
//  lesson5-tableview
//
//  Created by bryant tang on 4/29/14.
//  Copyright (c) 2014 bryant. All rights reserved.
//

#import "MyTableViewController.h"
#import "MailTableViewCell.h"

@interface MyTableViewController ()

@end

@implementation MyTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    cars = @[@"Ferrari" , @"Audi", @"Chevrolet", @"Porsche"];

    mails = @[@{@"sender":@"Bryant",@"content":@"Apple’s newest phone, the iPhone 5, was announced yesterday", @"status":@"important"},
              
              @{@"sender":@"Jessie",@"content":@"The iPhone 5 resolution has increased to 1,136 x 640 px at the same 326 pixels per inch (ppi) as previous Retina Devices.", @"status":@"important"},
              
              @{@"sender":@"Bryant",@"content":@"The default full screen size of the iPhone 5 is 320 x 568 px (w x h). This is half of the screen resolution because of the pixel doubling in a Retina Display. ", @"status":@"read"},
              
              @{@"sender":@"Anna",@"content":@"The iPhone 5 supports retina images just like the iPhone 4 & 4s. There are a variety of methods for adding these images, but the basic concept is to create an image at 2x the size you’d like it displayed and then tell the browser to", @"status":@"unread"},
              
              @{@"sender":@"Tony",@"content":@"If you’d like to make your website a web app so users can save it to their phone and run it similar to an app, you can make an iPhone startup image to display while the page is loading.", @"status":@"read"}];
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    if (indexPath.row % 2 != 0) {
//        return 44.0;
//    }else{
//        return 100.0;
//    }
    return 50.0;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [mails count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    NSString *identifier = @"";
//    if (indexPath.row % 2 != 0) {
//        identifier = [NSString stringWithFormat:@"CellA"];
//    }else{
//        identifier = [NSString stringWithFormat:@"CellB"];
//    }
//    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
//    
//    
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//    }
//    cell.textLabel.text = [cars objectAtIndex:indexPath.row];
//
//    return cell;
    
    NSInteger index = indexPath.row;
    
    NSString *identifier = @"";
    NSDictionary *mail = [mails objectAtIndex:index];
    identifier = [NSString stringWithString: [mail objectForKey:@"status"] ];


    MailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];


    if (cell == nil) {
        cell = [[MailTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.sender.text = [mail objectForKey:@"sender"];
    cell.content.text = [mail objectForKey:@"content"];
    //cell.textLabel.text = [mail objectForKey:@"content"];

    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
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
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
