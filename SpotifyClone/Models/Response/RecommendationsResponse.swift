//
//  RecommendationsResponse.swift
//  SpotifyClone
//
//  Created by ahmet kardesseven on 7.04.2023.
//

import Foundation


struct RecommendationsResponse: Codable {
    let tracks: [AudioTrack]
}
