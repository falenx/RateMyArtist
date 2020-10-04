//
//  SampleData.swift
//  RateMyArtist
//
//  Created by michael taylor on 9/23/20.
//

import Foundation

class SampleDatabase {
    
    var artistNames: [String]
    
    var savedArtists: [String]
    
    init(artistNamesArray: [String], savedArtistArray: [String]) {
        artistNames = artistNamesArray
        savedArtists = savedArtistArray
    }
}
