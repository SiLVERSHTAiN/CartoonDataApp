//
//  CDEpisode.swift
//  CartoonDataApp
//
//  Created by Aleksandr on 12.01.2023.
//

import Foundation

struct CDEpisode: Codable {

        let id: Int
        let name: String
        let air_date: String
        let episode: String
        let characters: [String]
        let url: String
        let created: String
}
