//
//  CDGetCharactersResponce.swift
//  CartoonDataApp
//
//  Created by Aleksandr on 17.01.2023.
//

import Foundation

struct CDGetCharactersResponce: Codable {
    struct Info: Codable {
        
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    
    let info: Info
    let results: [CDCharacter]
}

