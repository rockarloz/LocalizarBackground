//
//  ViewController.m
//  LocalizarBackground
//
//  Created by Carlos Castellanos on 21/05/14.
//  Copyright (c) 2014 Carlos Castellanos. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    _LocationManager = [[CLLocationManager alloc] init];
    _LocationManager.delegate=self;
    _LocationManager.distanceFilter = kCLDistanceFilterNone; // whenever we move
    _LocationManager.desiredAccuracy =  kCLLocationAccuracyHundredMeters; // 100 m
    [_LocationManager startUpdatingLocation];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
    
    
    if (UIApplication.sharedApplication.applicationState == UIApplicationStateActive)
    {
        NSLog(@"activa"); // aqui tu codigo para realizar la actualizacion de localizacion cuando la app esta activa
    }else{
        NSLog(@"en backgorund");// aqui tu codigo para realizar la actualizacion de localizacion cuando la app esta en backgroud
        //cuando el usuario presiona boton home o entra una llamada, etc

    }
    
}


@end
