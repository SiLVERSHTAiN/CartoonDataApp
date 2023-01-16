//
//  CDRequest.swift
//  CartoonDataApp
//
//  Created by Aleksandr on 13.01.2023.
//

import Foundation

/// Object that represents a single API call
final class CDRequest {
    
    private struct Constans {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    private let endPoint: CDEndPoint
    private let pathComponents: [String]
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for the API request in string format
    private var urlString: String {
        var string = Constans.baseUrl
        string += "/"
        string += endPoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "? "
            
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        return string
    }
    
    public var url: URL? {
        return URL(string: urlString)
    }
    
    public init(endPoint: CDEndPoint,
                pathComponents: [String] = [],
                queryParameters: [URLQueryItem] = []) {
        self.endPoint = endPoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
