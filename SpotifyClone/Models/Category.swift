//
//  Category.swift
//  SpotifyClone
//
//  Created by ahmet kardesseven on 7.04.2023.
//

import Foundation

struct CategoryItems: Codable {
    let items: [Category]
    
}

struct Category: Codable {
    let id: String
    let name: String
    let icons: [APIImage]
}
