//
//  ViewController.swift
//  CoreLocation
//
//  Created by Yuliia Engman on 2/21/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    
    private let locationSession = CoreLocationSession()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //testing converting coordinates to place name
        convertCoordinateToPlacemark()
        
        //testing converting place name to coordinates
        convertPlaceNAmeToCoordinate()
        
        //configure map view
        // attempt to show the user's current location
        mapView.showsUserLocation = true
    }
    
    private func convertCoordinateToPlacemark() {
        if let location = Location.getLocations().first {
            locationSession.convertCoordinateToPlacemark(coordinate: location.coordinate)
        }
    }
    
    private func convertPlaceNAmeToCoordinate() {
//
        
     }


}

