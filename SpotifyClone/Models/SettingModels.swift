//
//  SettingModels.swift
//  SpotifyClone
//
//  Created by ahmet kardesseven on 6.04.2023.
//

import Foundation

struct Section {
    let title : String
    let options : [Option]
}

struct Option {
    let title: String
    let handler: () -> Void
}

