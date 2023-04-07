//
//  Artist.swift
//  SpotifyClone
//
//  Created by ahmet kardesseven on 5.04.2023.
//

import Foundation

struct Artist: Codable {
    let id: String
    let name: String
    let type: String
    let images: [APIImage]?
    let external_urls: [String : String]

}
       
