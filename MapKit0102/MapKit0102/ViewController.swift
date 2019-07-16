//
//  ViewController.swift
//  MapKit0102
//
//  Created by Luc Derosne on 09/07/2019.
//  Copyright © 2019 Luc Derosne. All rights reserved.
//

// 2  Centrer une carte au démarrage sur des coordonnées précises

import UIKit
import MapKit

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
        let span = MKCoordinateSpan(latitudeDelta: 3, longitudeDelta: 3)
        let region = MKCoordinateRegion(center: coordinateInit, span: span)
        mapView.setRegion(region, animated: true)
        mapView.delegate = self
    }
    
}
