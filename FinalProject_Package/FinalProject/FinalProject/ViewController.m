//
//  ViewController.m
//  FinalProject
//
//  Created by bryant tang on 5/20/15.
//  Copyright (c) 2015 cpttm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Initial DB
    myCollection = [NSMutableArray new];
    
    //[myCollection addObject:@{@"event":@"Bryant",@"lan":@113.1231,@"lon":@22.1231}];
    
    //Setup Map
    MKCoordinateRegion theRegion = _myMap.region;
    theRegion.center.latitude = 22.196958;
    theRegion.center.longitude = 113.544403;
    theRegion.span.longitudeDelta *= 0.00025;
    theRegion.span.latitudeDelta *= 0.00025;
    
    _myMap.region = theRegion;
    
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(addAnnotationOnMap:)];
    
    [_myMap addGestureRecognizer:longPress];
    
    
}

#pragma mark - Handler
-(void) addAnnotationOnMap:(UITapGestureRecognizer*)recogizer{
    
    if (recogizer.state == UIGestureRecognizerStateBegan) {
        CGPoint newPoint = [recogizer locationInView:_myMap];

        tempPoint = newPoint;
        
        UIAlertView *askForName = [[UIAlertView alloc] initWithTitle:@"Message" message:@"Please enter the event at this place." delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
        
        askForName.alertViewStyle = UIAlertViewStylePlainTextInput;
        [askForName show];
        
        
    
    }
    
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    switch (buttonIndex) {
        case 0:  //Cancel
            
            break;
        case 1: //OK
        {
            CLLocationCoordinate2D newCoordinate = [_myMap convertPoint:tempPoint toCoordinateFromView:_myMap];
            
            MKPointAnnotation *newAnnotation = [[MKPointAnnotation alloc] init];
            newAnnotation.coordinate = newCoordinate;
            newAnnotation.title = [alertView textFieldAtIndex:0].text;
            
            [_myMap addAnnotation:newAnnotation];
            
            //Add to myCollection
            [myCollection addObject:@{@"event":[alertView textFieldAtIndex:0].text,
                                      @"lan":[NSNumber numberWithDouble:newCoordinate.latitude],
                                      @"lon":[NSNumber numberWithDouble:newCoordinate.longitude]}];
            [_tableview reloadData];
            break;
        }
        default:
            break;
    }

}


#pragma mark - Table Data Source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [myCollection count];
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"mycell"];
    
    cell.textLabel.text = [[myCollection objectAtIndex:[indexPath row]] objectForKey:@"event"];
    
    
    
    
    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
}

@end
