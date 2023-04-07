//
//  FeaturedPlaylistsResponse.swift
//  SpotifyClone
//
//  Created by ahmet kardesseven on 7.04.2023.
//

import Foundation

struct FeaturedPlaylistsResponse: Codable {
    let playlists: PlaylistResponse
}
struct PlaylistResponse: Codable {
    let items: [Playlist]
}


struct User: Codable {
    let display_name: String
    let external_urls: [String : String]
    let id: String
}
