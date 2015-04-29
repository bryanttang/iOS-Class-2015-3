//
//  ViewController.m
//  DemoMap
//
//  Created by bryant tang on 4/29/15.
//  Copyright (c) 2015 CPTTM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //##########  Map
    MKCoordinateRegion theRegion = _myMap.region;
    
    theRegion.center.latitude = 22.262769;
    theRegion.center.longitude = 114.193054;
    
    theRegion.span.longitudeDelta *= 0.001;
    theRegion.span.latitudeDelta *= 0.001;
    
    _myMap.region = theRegion;
    
    MKPointAnnotation *myAnnotation = [[MKPointAnnotation alloc] init];
    myAnnotation.coordinate = CLLocationCoordinate2DMake(22.262769, 114.193054);
    myAnnotation.title = @"Iron man is here";
    myAnnotation.subtitle = @"There is a criminal here";
    
    [_myMap addAnnotation:myAnnotation];
    
    //##########  Location
    //Declare location manager
    locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = self;
    
    
    [locationManager requestWhenInUseAuthorization];  // For foreground access
    [locationManager requestAlwaysAuthorization]; // For background access
    
    
    //Accuracy setting
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    locationManager.distanceFilter = 100; // meters
    
    //Start location manager
    [locationManager startUpdatingLocation];
    
    
    
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
    CLLocation* location = [locations lastObject];
    
    NSLog(@"latitude %+.6f, longitude %+.6f\n",
          location.coordinate.latitude,
          location.coordinate.longitude);
    
    [self changeLocation:CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)];
    
    
}

- (void)changeLocation:(CLLocationCoordinate2D)coord{
    MKCoordinateRegion theRegion = _myMap.region;
    
    theRegion.center = coord;
    
//    theRegion.center.latitude = 22.262769;
//    theRegion.center.longitude = 114.193054;
    
//    theRegion.span.longitudeDelta *= 0.001;
//    theRegion.span.latitudeDelta *= 0.001;
    
    _myMap.region = theRegion;
    
}


- (MKAnnotationView*)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation{
    
    MKAnnotationView* aView = [[MKAnnotationView alloc] initWithAnnotation:annotation
                                                           reuseIdentifier:@"MyCustomAnnotation"];
    aView.image = [UIImage imageNamed:@"ironman"];
    aView.centerOffset = CGPointMake(10, -20);
    aView.canShowCallout = YES;
    
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    [rightButton addTarget:nil action:nil forControlEvents:UIControlEventTouchUpInside];
    aView.rightCalloutAccessoryView = rightButton;
    
    UIImageView *myCustomImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"person_head"]];
    aView.leftCalloutAccessoryView = myCustomImage;
    
    
    return aView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
