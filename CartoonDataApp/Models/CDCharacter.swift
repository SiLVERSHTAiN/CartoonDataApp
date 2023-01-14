//
//  CDCharacter.swift
//  CartoonDataApp
//
//  Created by Aleksandr on 12.01.2023.
//

import UIKit

struct CDCharacter: Codable {
    
    let id: Int
    let name: String
    let status: CDCharacterStatus
    let species: String
    let type: String
    let gender: CDCharacterGender
    let origin: CDOrigin
    let location: CDSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}

