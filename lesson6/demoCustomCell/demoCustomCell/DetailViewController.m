//
//  DetailViewController.m
//  demoCustomCell
//
//  Created by bryant tang on 4/12/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"%@", _info);
    
    NSString *name = [_info objectForKey:@"name"];
    self.title = name;
    
    _headImg.image = [UIImage imageNamed:[_info objectForKey:@"img"]];
    _emailTitle.text = [_info objectForKey:@"title"];
    _detailText.text = [_info objectForKey:@"description"];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
