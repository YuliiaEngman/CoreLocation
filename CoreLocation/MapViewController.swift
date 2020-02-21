//
//  ViewController.swift
//  CoreLocation
//
//  Created by Yuliia Engman on 2/21/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
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
        
         //ANOTATIONS Step 4:
        mapView.delegate = self
        
         //ANOTATIONS Step 3:
        loadMapView()
    }
    
    //ANOTATIONS Step 1:
    func makeAnotations() -> [MKPointAnnotation] {
        var annotations = [MKPointAnnotation]()
        for location in Location.getLocations() {
            let annotation = MKPointAnnotation()
            annotation.coordinate = location.coordinate
            annotation.title = location.title
            annotations.append(annotation)
        }
        return annotations
    }
    
        //ANOTATIONS Step 2:
    private func loadMapView() {
let annotations = makeAnotations()
            // to add 1 annotation = annotation
            // to add many annotations = annotations
        mapView.addannotatoins(annotations)
        
        // this line of code is trying to zoom in and show as much annotations as possible
        mapView.showAnnotations(annottations, animated: true)
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

extension MapViewController: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, viewFor annotation: MLAnnotation) ->  {
           print("didSelecte")
       }
    
    guard annotation is MKPointAnnotation else {
    return nil
    }
    let identifier = "locationAnnotation"
    var annotationView: MKPointAnnotation
    
    //try to deque and reuse annottation view
    if let dequeueView = mapView.dequeueReusableAnnotationView(withidentifier: identifier) as? MKPointAnnotation {
        annotationView = dequeueView
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MLAnnotationView, calloutAccessoryControlTapped: UIControl) {
        print("calloutAccessoryControlTapped") // this is basically bubble around annottation
    }
}

