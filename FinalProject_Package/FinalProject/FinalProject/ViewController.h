//
//  ViewController.h
//  FinalProject
//
//  Created by bryant tang on 5/20/15.
//  Copyright (c) 2015 cpttm. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@interface ViewController : UIViewController<MKMapViewDelegate, UITableViewDataSource, UITableViewDelegate,UIAlertViewDelegate>
{
    NSMutableArray *myCollection;
    CGPoint tempPoint;
}

@property (strong, nonatomic) IBOutlet UITableView *tableview;
@property (strong, nonatomic) IBOutlet MKMapView *myMap;

@end

