//
//  Constants.swift
//  pixel-city
//
//  Created by Richard Cummings on 2018-08-19.
//  Copyright © 2018 Richard Cummings. All rights reserved.
//

import Foundation

let apiKey = "c96ea635026350270854f10dc5a9441e"

func flickrUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    return url = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
}

