//
//  CoreLocationSession.swift
//  CoreLocation
//
//  Created by Yuliia Engman on 2/21/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation


// monitor a CLRegion
// a CLRegion is made up of a center coordinate and a radius in kCIUIParameterSetprivate func startMonitoringRegion() {
    let loaction = Location.getLocations()[2] // Central Park
let identifier = "monitoring region"
    let region = CLCircularRegion(center: location.coordinate, radius: 500, identifier: identifier)
region.notifyOnEntry = true
region.notifyOnExit = false

locationManager.startMonitoring(for: region)
    
}
