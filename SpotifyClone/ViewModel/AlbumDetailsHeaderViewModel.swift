//
//  AlbumDetailsHeaderViewModel.swift
//  SpotifyClone
//
//  Created by ahmet kardesseven on 8.04.2023.
//

import Foundation


struct AlbumDetailsHeaderViewModel: Codable {
    let albumCoverImage: URL?
    let albumName: String
    let releaseDate: String
    let artistName: String
    
}
