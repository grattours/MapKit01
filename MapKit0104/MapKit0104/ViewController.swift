//
//  ViewController.swift
//  MapKit0104
//
//  Created by Luc Derosne on 09/07/2019.
//  Copyright © 2019 Luc Derosne. All rights reserved.
//

// 4 placer plusieurs annotations, provisoirement, à partir du
//   ViewDidload.

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    // San José Capitale du Costa Rica pour centrer la carte
    var latitudeInit: Double = 9.998784
    var longitudeInit: Double = -84.204007
    var coordinateInit :  CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitudeInit, longitude: longitudeInit)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let span = MKCoordinateSpan(latitudeDelta: 3, longitudeDelta: 3)
        let region = MKCoordinateRegion(center: coordinateInit, span: span)
        mapView.showsUserLocation = true
        mapView.setRegion(region, animated: true)
        mapView.delegate = self
        mapView.isRotateEnabled = true
        
        let sanjose = Poi(title: "San José aéroport", coordinate: CLLocationCoordinate2D(latitude: 9.998784, longitude: -84.204007), info: "Capitale du Costa Rica")
        let tortuguero = Poi(title: "Tortuguero", coordinate: CLLocationCoordinate2D(latitude: 10.542646, longitude: -83.502493), info: "Pontes des tortues")
        let sanrafael = Poi(title: "San Rafael", coordinate: CLLocationCoordinate2D(latitude: 10.678778, longitude: -84.819542), info: "Parc national")
        let culebrabay = Poi(title: "Culebra Bay", coordinate: CLLocationCoordinate2D(latitude: 10.596383, longitude: -85.684371), info: "Parc national")
        let nicoya = Poi(title: "Péninsule de Nicoya", coordinate: CLLocationCoordinate2D(latitude: 9.907203, longitude: -85.526531), info: "Parc national")
        let quepos = Poi(title: "Quepos", coordinate: CLLocationCoordinate2D(latitude: 9.446970, longitude: -84.140092), info: "Parc national")
        let cerrochirripo = Poi(title: "Cerro Chirripó", coordinate: CLLocationCoordinate2D(latitude: 9.488544, longitude: -83.487878), info: "Point culminant")
        let talamanca = Poi(title: "Puerto Viejo de Talamanca", coordinate: CLLocationCoordinate2D(latitude: 9.654749, longitude: -82.754881), info: "Paradis des surfeurs")
        let malpais = Poi(title: "plage Malpais", coordinate: CLLocationCoordinate2D(latitude: 9.599859, longitude: -85.142403), info: "Plage")
        let golfito = Poi(title: "Golfito", coordinate: CLLocationCoordinate2D(latitude: 8.604103, longitude: -83.112979), info: "Plage")
        let bijagua = Poi(title: "Bijagua", coordinate: CLLocationCoordinate2D(latitude: 10.731481, longitude: -85.058486), info: "Rio Celeste")
        let fortuna = Poi(title: "La Fortuna", coordinate: CLLocationCoordinate2D(latitude: 10.519910, longitude: -84.635451), info: "Cascade piscine natuelle")
        
                mapView.addAnnotations([sanjose, tortuguero, sanrafael, culebrabay, nicoya, golfito, quepos, cerrochirripo, talamanca, malpais, bijagua, fortuna])
        
    }


}

