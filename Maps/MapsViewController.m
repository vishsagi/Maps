//
//  MapsViewController.m
//  Maps
//
//  Created by Samar Singla on 11/7/12.
//  Copyright (c) 2012 Samar Singla. All rights reserved.
//

#import "MapsViewController.h"
#import <MapKit/MapKit.h>
#define SPAN 20;

@interface MapsViewController ()

@end

@implementation MapsViewController

@synthesize mapView;
@synthesize myLocation = _myLocation;


- (IBAction)location:(id)sender {
    
    mapView = [[MKMapView alloc] initWithFrame:self.mapView.bounds];
       
    mapView.showsUserLocation=YES;  //to show user's location
    mapView.zoomEnabled=YES;
    mapView.scrollEnabled=YES;

    
    float myLat;
    float myLon;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    myLatitude = [defaults objectForKey:@"lat"] ;
    myLongitude = [defaults objectForKey:@"lon"];
     
    myLat = [myLatitude floatValue];
    myLon = [myLongitude floatValue];
    
    CLLocationCoordinate2D center;
    center.latitude = myLat;
    center.longitude = myLon;
    
    MKCoordinateSpan span;
    span.latitudeDelta = SPAN;
    span.longitudeDelta = SPAN;
    
    MKCoordinateRegion region;
    region.center = center;
    region.span = span;
    
    NSLog(@"changes");
    [mapView setRegion:region animated:YES];
    [self.view addSubview:mapView];
    
}

/*- (MKAnnotationView *)mapView:(MKMapView *)mV viewForAnnotation:(id <MKAnnotation>)annotation{
    
    MKPinAnnotationView *pinView = nil;
    if(annotation != mapView.userLocation)
    {
        static NSString *defaultPinID = @"aPin";
        pinView = (MKPinAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:defaultPinID];
        if ( pinView == nil )
            pinView = [[MKPinAnnotationView alloc]
                        initWithAnnotation:annotation reuseIdentifier:defaultPinID];
    } else {
    }
    pinView.pinColor = MKPinAnnotationColorRed;
    pinView.canShowCallout = YES;
    pinView.animatesDrop = YES;
    return pinView;
}


- (MKAnnotationView *) mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>) annotation{
    MKPinAnnotationView *annView=[[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:nil];
    if (annotation == self.mapView.userLocation)
    {
        annView.pinColor = MKPinAnnotationColorRed;
        annView.animatesDrop=TRUE;
        annView.canShowCallout = YES;
        annView.calloutOffset = CGPointMake(-5, 5);
        
    }
        return annView;
}*/


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

@end
