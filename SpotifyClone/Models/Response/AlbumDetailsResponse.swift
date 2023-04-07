//
//  AlbumDetailsResponse.swift
//  SpotifyClone
//
//  Created by ahmet kardesseven on 7.04.2023.
//

import Foundation

struct AlbumDetailsResponse: Codable {
    let album_type: String
    let artists: [Artist]
    let external_urls: [String: String]
    let id: String
    let images: [APIImage]
    let label: String
    let name: String
    let tracks: TracksResponse
    //    let available_markets: [String]

}

struct TracksResponse: Codable {
    let items: [AudioTrack]
}
