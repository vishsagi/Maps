//
//  MapsViewController.h
//  Maps
//
//  Created by Samar Singla on 11/7/12.
//  Copyright (c) 2012 Samar Singla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapKit/MapKit.h"

@interface MapsViewController : UIViewController <MKMapViewDelegate>
{
    
    NSString *myLatitude;
    NSString *myLongitude;
   // CLLocationManager *locationManager;
       
}
@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) IBOutlet UIButton *myLocation;

- (IBAction)location:(id)sender;

@end
