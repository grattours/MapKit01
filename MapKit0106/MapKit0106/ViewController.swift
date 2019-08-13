//
//  ViewController.swift
//  MapKit0106
//
//  Created by Luc Derosne on 09/07/2019.
//  Copyright © 2019 Luc Derosne. All rights reserved.
//

// 1.6 Afficher une alerte sur le clic du bouton d’information (i)

import UIKit
import MapKit

class ViewController: UIViewController,MKMapViewDelegate {

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
       // ranger ailleurs...
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

    // enrichir les annotations
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard let annotation = annotation as? Poi else { return nil }
        let identifier = "poi"
        var view: MKMarkerAnnotationView
        if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
            as? MKMarkerAnnotationView {
            dequeuedView.annotation = annotation
            view = dequeuedView
        } else {
            view = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            view.canShowCallout = true
            view.calloutOffset = CGPoint(x: -5, y: 5)
            view.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
        }
        return view
    }

    // placer le titre et l'info du Poi dans l'alerte
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        guard let poi = view.annotation as? Poi else { return }
        let placeName = poi.title
        let placeInfo = poi.info
        
        let ac = UIAlertController(title: placeName, message: placeInfo, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
    }

    
}

