//
//  SearchResult.swift
//  SpotifyClone
//
//  Created by ahmet kardesseven on 7.04.2023.
//

import Foundation

enum SearchResult {
    case artist(model: Artist)
    case album(model: Album)
    case track(model: AudioTrack)
    case playlist(model: Playlist)
}
