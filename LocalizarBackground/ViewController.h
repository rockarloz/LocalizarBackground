//
//  ViewController.h
//  LocalizarBackground
//
//  Created by Carlos Castellanos on 21/05/14.
//  Copyright (c) 2014 Carlos Castellanos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
@interface ViewController : UIViewController<CLLocationManagerDelegate>
@property (strong, nonatomic) CLLocationManager *LocationManager;
@end
