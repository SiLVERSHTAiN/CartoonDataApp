//
//  CDCharacterStatus.swift
//  CartoonDataApp
//
//  Created by Aleksandr on 14.01.2023.
//

import Foundation

enum CDCharacterStatus: String, Codable {
    
    case avile = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
    
    var text: String {
        switch self {
        case .avile, .dead:
            return rawValue
        case .unknown:
            return "Unknown"
        }
    }
}
