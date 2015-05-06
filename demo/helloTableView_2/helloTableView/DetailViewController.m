//
//  DetailViewController.m
//  helloTableView
//
//  Created by bryant tang on 4/22/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"%@",_info);
    
    _headerimg.image = [UIImage imageNamed:[_info objectForKey:@"img"]];
    _name.text = [_info objectForKey:@"name"];
    _etitle.text = [_info objectForKey:@"eTitle"];
    _subtitle.text = [_info objectForKey:@"eSubtitle"];
    
    
    
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
