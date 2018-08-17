//
//  DroppablePin.swift
//  pixel-city
//
//  Created by Richard Cummings on 2018-08-16.
//  Copyright © 2018 Richard Cummings. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}
