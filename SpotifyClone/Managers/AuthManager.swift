//
//  AuthManager.swift
//  SpotifyClone
//
//  Created by ahmet kardesseven on 5.04.2023.
//

import Foundation

final class AuthMnager {
    static let shared = AuthMnager()
    private var refreshingToken = false
    struct Constants {
        static let clientID = "87510d91dc934b108f95939901ce613b"
        static let clientSecret =  "1f89ee6154e44913927b503299cbc37d"
        static let tokenAPIURL = "https://accounts.spotify.com/api/token"
        static let redirectURI = "https://www.linkedin.com/in/alpsudilbilir/" // Any link works
        static let scopes = "user-read-private%20playlist-modify-public%20playlist-read-private%20playlist-modify-private%20user-follow-read%20user-library-modify%20user-library-read%20user-read-email"
    }
    
    private init() { }
    
    public var signInURL: URL? {
        let base = "https://accounts.spotify.com/authorize"
        let urlString = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(Constants.scopes)&redirect_uri=\(Constants.redirectURI)&show_dialog=TRUE"
        return URL(string: urlString)
    }
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
