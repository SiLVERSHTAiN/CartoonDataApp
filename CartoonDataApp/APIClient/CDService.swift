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
    
    enum CDServiceError: Error {
        
        case failedToCreateRequest
        case failedToGetData
    }
    
    /// Send Rick & Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The type of object we expect to get back
    ///   - complition: Callback with data or error
    public func execute<T: Codable>(_ request: CDRequest, expecting type: T.Type, complition: @escaping(Result<T, Error>) -> Void) {
        
        guard let urlRequest = self.request(from: request) else {
            complition(.failure(CDServiceError.failedToCreateRequest))
            return }
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
            guard let data, error == nil else {
                complition(.failure(error ?? CDServiceError.failedToGetData))
                return }
            
            // Decode responce
            do {
                let result = try JSONDecoder().decode(type.self, from: data)
                complition(.success(result))
            }
            catch {
                complition(.failure(error))
            }
        }
        task.resume()
    }
    
        //MARK: - Private
    
    private func request(from cdRequest: CDRequest) -> URLRequest? {
        guard let url = cdRequest.url else { return nil }
        var request = URLRequest(url: url)
        request.httpMethod = cdRequest.httpMethod
        return request
    }
}
