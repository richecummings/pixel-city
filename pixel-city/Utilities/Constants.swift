//
//  Constants.swift
//  pixel-city
//
//  Created by Richard Cummings on 2018-08-19.
//  Copyright © 2018 Richard Cummings. All rights reserved.
//

import Foundation

let API_KEY = "c96ea635026350270854f10dc5a9441e"
let NUMBER_OF_PHOTOS_TO_DOWNLOAD = 40

// identifiers
let DROPPABLE_PIN = "droppablePin"
let POP_VC = "PopVC"
let PHOTO_CELL = "photoCell"

func flickrUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(API_KEY)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
}

