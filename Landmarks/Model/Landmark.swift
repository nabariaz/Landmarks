//
//  Landmark.swift
//  Landmarks
//
//  Created by Naba Riaz on 9/19/22.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var state: String
    var description: String
    var isFavorite: Bool
    var park: String
    var city: String
    var category: Category
    var isFeatured: Bool
    
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    var featureImage: Image? {
        isFavorite ? Image(imageName + "_feature") : nil
    }
    
    private var coordinates: Coordinates
        var locationCoordinate: CLLocationCoordinate2D {
            CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
        }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
