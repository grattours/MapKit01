//
//  ViewController.swift
//  MapKit0103
//
//  Created by Luc Derosne on 09/07/2019.
//  Copyright © 2019 Luc Derosne. All rights reserved.
//

// 1.3 placer une  annotation avec des coordonnées Latitude-longitude

import MapKit
import UIKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    // San José Capitale du Costa Rica
    var latitudeInit: Double = 9.998784
    var longitudeInit: Double = -84.204007
    var coordinateInit :  CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitudeInit, longitude: longitudeInit)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // centrer la carte sur la Capitale
        let span = MKCoordinateSpan(latitudeDelta: 3, longitudeDelta: 3)
        let region = MKCoordinateRegion(center: coordinateInit, span: span)
        mapView.setRegion(region, animated: true)
        mapView.delegate = self
        // placer premier Point d'intérêt
        let sanjose = Poi(title: "San José aéroport", coordinate: CLLocationCoordinate2D(latitude: 9.998784, longitude: -84.204007), info: "Capitale du Costa Rica")
        mapView.addAnnotation(sanjose)
        
    }
    
}
