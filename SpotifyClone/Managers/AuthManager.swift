//
//  AuthManager.swift
//  SpotifyClone
//
//  Created by ahmet kardesseven on 5.04.2023.
//

import Foundation

final class AuthMnager {
    static let shared = AuthMnager()
    
    
    
    
    
    private init() { }
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken : String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
    
    
}
