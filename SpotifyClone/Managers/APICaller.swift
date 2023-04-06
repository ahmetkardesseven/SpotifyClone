//
//  APICaller.swift
//  SpotifyClone
//
//  Created by ahmet kardesseven on 5.04.2023.
//

import Foundation

final class APICaller {
    static let shared = APICaller()
    
    private init() { }
    
    struct Constans {
        static let baseAPIURL = "https://api.spotify.com/v1"
    }
    enum APIError : Error {
        case faileedToGetData
    }
    
    public func getCurrentUserProfile(completion: @escaping (Result<UserProfile,Error>) -> Void) {
        creatRequest(
            with: URL(string: Constans.baseAPIURL + "/me"),
            type: .GET) { baseRequest in
                let task = URLSession.shared.dataTask(with: baseRequest) { data, _, error in
                    guard let data = data, error == nil else {
                        completion(.failure(APIError.faileedToGetData))
                        return
                    }
                    do {
                        let result = try JSONDecoder().decode(UserProfile.self, from: data)
                        print(result)
                    }catch{
                        print(error.localizedDescription)
                        completion(.failure(error))
                    }
                }
                task.resume()
            }
    }
    enum HTTPMethod:String {
        case GET
        case POST
        case DELETE
        case PUT
    }
    
    
    private func creatRequest(
        with url: URL?,
        type: HTTPMethod,
        completion: @escaping (URLRequest) -> Void) {

        AuthMnager.shared.withValidToken { token in
            guard let apiURL = url else {
                return
            }
            var request = URLRequest(url: apiURL)
            request.setValue("Bearer", forHTTPHeaderField: "Authorization")
            request.httpMethod = type.rawValue
            request.timeoutInterval = 30
            completion(request)
            
        }
    }
    
    
    
}
