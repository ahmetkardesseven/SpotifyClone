//
//  SavedAlbumsResponse.swift
//  SpotifyClone
//
//  Created by ahmet kardesseven on 7.04.2023.
//

import Foundation

struct LibraryAlbumResponse: Codable {
    let items: [UserAlbumResponse]
}

struct UserAlbumResponse: Codable {
    let album: Album
    let added_at: String
}
