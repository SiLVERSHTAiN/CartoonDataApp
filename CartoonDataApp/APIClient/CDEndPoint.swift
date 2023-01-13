//
//  CDEndPoint.swift
//  CartoonDataApp
//
//  Created by Aleksandr on 13.01.2023.
//

import Foundation

/// Represents unique API endPoint
@frozen enum CDEndPoint: String {
    /// endPoint to get character info
    case character
    /// endPoint to get location info
    case location
    /// endPoint to get episode info
    case episode
}
