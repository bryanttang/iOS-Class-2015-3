//
//  PictureTableViewController.m
//  HelloMapThread
//
//  Created by bryant tang on 5/4/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import "PictureTableViewController.h"
#import "myCell.h"

@implementation PictureTableViewController

-(void)viewDidLoad{
    self.title = @"Images List";
    pic_url = @[@"http://images.nigms.nih.gov/imageRepository/2484/RNA_pol_II6.jpg",@"http://images.nigms.nih.gov/imageRepository/2484/RNA_pol_II6.jpg",
            @"http://www.wallpapersgalaxy.com/wp-content/uploads/2013/06/312.jpg",
            @"http://prommanow.com/wp-content/uploads/2014/10/ironman3.jpg"];
    
}

-(IBAction)clickSegment:(UISegmentedControl*)segment{
    NSLog(@"Start Loading...");
    if (segment.selectedSegmentIndex == 0) {
        //
        mode = 1;
        [self.tableView reloadData];
        
    }
    if (segment.selectedSegmentIndex == 1) {
        //
        
        mode = 2;
        [self.tableView reloadData];
        
    }

}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80.0;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView  {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [pic_url count];
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    myCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell1"];
    
    
    //if (cell == nil) {
    cell = [[myCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell1"];
    [cell setCell];
    if (mode == 1) {
        [cell MainloadImgByURL:[pic_url objectAtIndex:[indexPath row]]];
    }else if(mode == 2){
        [cell loadImgByURL:[pic_url objectAtIndex:[indexPath row]]];
    }
    
    
    
//        
//        UIActivityIndicatorView *abc = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
//        [cell.imageView addSubview:abc];
//        [abc startAnimating];
        
        
        
        
        

        
    //}
    
    
    
    
    
    return cell;
    
    
}

@end
