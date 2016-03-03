//
//  ViewController.h
//  Die Lexmann Finanzierung
//
//  Created by Filip Lexmann on 13/12/15.
//  Copyright © 2015 Filip Lexmann. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate> {
    
    CLLocationManager *loctaionManger;
    
}

@property (weak, nonatomic) IBOutlet MKMapView *Mapview;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControl;

- (IBAction)ChangeMap:(id)sender;

- (IBAction)LocateMe:(id)sender;




@end
