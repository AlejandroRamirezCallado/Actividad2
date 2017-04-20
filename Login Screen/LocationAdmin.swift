//
//  LocationAdmin.swift
//  Actividad1
//
//  Created by Alejandro Ramírez Callado on 20/4/17.
//  Copyright © 2017 Borja Alonso-Majagranzas Mendicote. All rights reserved.
//

import UIKit
import CoreLocation

class LocationAdmin: NSObject, CLLocationManagerDelegate {
    
    var locationManager:CLLocationManager?
    
    override init() {
        super.init()
        
        locationManager=CLLocationManager()
        locationManager?.delegate=self
        locationManager?.requestAlwaysAuthorization()
        locationManager?.startUpdatingLocation()
        
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("mi pos en lat: ", locations[0].coordinate.latitude," long: ", locations[0].coordinate.longitude)
    }

}
