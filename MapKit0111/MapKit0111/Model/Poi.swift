//
//  Poi.swift
//  MapKit0106
//
//  Created by Luc Derosne on 09/07/2019.
//  Copyright © 2019 Luc Derosne. All rights reserved.
//

// point d'intérêt

import MapKit
import UIKit

struct Location {
    static let sanjose = Poi(title: "San José aéroport", coordinate: CLLocationCoordinate2D(latitude: 9.998784, longitude: -84.204007), info: "Capitale du Costa Rica")
    static let tortuguero = Poi(title: "Tortuguero", coordinate: CLLocationCoordinate2D(latitude: 10.542646, longitude: -83.502493), info: "Pontes des tortues")
    static let sanrafael = Poi(title: "San Rafael", coordinate: CLLocationCoordinate2D(latitude: 10.678778, longitude: -84.819542), info: "Parc national")
    static let culebrabay = Poi(title: "Culebra Bay", coordinate: CLLocationCoordinate2D(latitude: 10.596383, longitude: -85.684371), info: "Parc national")
    static let nicoya = Poi(title: "Péninsule de Nicoya", coordinate: CLLocationCoordinate2D(latitude: 9.907203, longitude: -85.526531), info: "Parc national")
    static let quepos = Poi(title: "Quepos", coordinate: CLLocationCoordinate2D(latitude: 9.446970, longitude: -84.140092), info: "Parc national")
    static let cerrochirripo = Poi(title: "Cerro Chirripó", coordinate: CLLocationCoordinate2D(latitude: 9.488544, longitude: -83.487878), info: "Point culminant")
    static let talamanca = Poi(title: "Puerto Viejo de Talamanca", coordinate: CLLocationCoordinate2D(latitude: 9.654749, longitude: -82.754881), info: "Paradis des surfeurs")
    static let malpais = Poi(title: "plage Malpais", coordinate: CLLocationCoordinate2D(latitude: 9.599859, longitude: -85.142403), info: "Plage")
    static let golfito = Poi(title: "Golfito", coordinate: CLLocationCoordinate2D(latitude: 8.604103, longitude: -83.112979), info: "Plage")
    static let bijagua = Poi(title: "Bijagua", coordinate: CLLocationCoordinate2D(latitude: 10.731481, longitude: -85.058486), info: "Rio Celeste")
    static let fortuna = Poi(title: "La Fortuna", coordinate: CLLocationCoordinate2D(latitude: 10.519910, longitude: -84.635451), info: "Cascade piscine natuelle")
}

class Poi: NSObject, MKAnnotation {
    var title: String?
    var coordinate: CLLocationCoordinate2D
    var info: String
    
    init(title: String, coordinate: CLLocationCoordinate2D, info: String) {
        self.title = title
        self.coordinate = coordinate
        self.info = info
    }
    

}
