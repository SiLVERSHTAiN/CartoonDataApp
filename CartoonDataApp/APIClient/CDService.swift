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
    ///   - complition: Callback with data or error
    public func execute(_ request: CDRequest, complition: @escaping() -> Void) {
        
    }
}
