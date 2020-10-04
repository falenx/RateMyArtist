//
//  TattooArtist.swift
//  RateMyArtist
//
//  Created by michael taylor on 9/24/20.
//

import Foundation


class TattooArtist {
    var name: String
    var artistImage: String
    var shopName: String
    var contactInfo: String
    var averageRating: String
    var isFavorited = false
    
    init(artistName: String, image: String, shop: String, contact: String, rating: String) {
        name = artistName
        artistImage = image
        shopName = shop
        contactInfo = contact
        averageRating = rating
    }
}
