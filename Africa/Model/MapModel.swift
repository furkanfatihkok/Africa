//
//  MapsModel.swift
//  Africa
//
//  Created by FFK on 31.10.2023.
//

import Foundation
import MapKit

struct MapModel: Codable, Identifiable {
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
    
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
