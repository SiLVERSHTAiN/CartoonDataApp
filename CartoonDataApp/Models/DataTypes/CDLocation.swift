//
//  CDLocation.swift
//  CartoonDataApp
//
//  Created by Aleksandr on 12.01.2023.
//

import UIKit

struct CDLocation: Codable {
    
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
