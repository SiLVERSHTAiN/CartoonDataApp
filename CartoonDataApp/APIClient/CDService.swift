//
//  CDService.swift
//  CartoonDataApp
//
//  Created by Aleksandr on 13.01.2023.
//

import Foundation

/// Primary API service object to get Rick & Morty data
final class CDService {
    /// Shared singleton instanse
    static let share = CDService()
    
    /// Privatized constructor
    private init() {}
    
    /// Send Rick & Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The type of object we expect to get back
    ///   - complition: Callback with data or error
    public func execute<T: Codable>(_ request: CDRequest, expecting type: T.Type, complition: @escaping(Result<T, Error>) -> Void) {
        
        
    }
    
        //MARK: - Private
    
    private func request(from cdRequest: CDRequest) -> URLRequest? {
        guard let url = cdRequest.url else { return nil }
        var request = URLRequest(url: url)
        request.httpMethod = cdRequest.httpMethod
        return request
    }
}
