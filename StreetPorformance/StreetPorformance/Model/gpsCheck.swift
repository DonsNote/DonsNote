//
//  gpsCheck.swift
//  StreetPorformance
//
//  Created by Kimdohyun on 2023/07/03.
//

import Foundation
import CoreLocation
import CoreLocationUI

class LocationManagers: NSObject, CLLocationManagerDelegate
{
    let locationManager = CLLocationManager()
    
    override init()
    {
        super.init()
        
        locationManager.delegate = self
    }
    
    func requestLocationAuthorization()
    {
        locationManager.requestWhenInUseAuthorization()
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus)
    {
        
    }
}
