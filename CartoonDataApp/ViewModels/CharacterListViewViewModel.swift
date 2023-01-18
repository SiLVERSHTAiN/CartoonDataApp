//
//  CharacterListViewViewModel.swift
//  CartoonDataApp
//
//  Created by Aleksandr on 18.01.2023.
//

import Foundation

struct CharacterListViewViewModel {
    
    func fetchCharacters() {
        
        CDService.share.execute(.listCharactersRequests, expecting: CDGetCharactersResponce.self) { result in
            switch result {
            case .success(let model):
                print(String(describing: model))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}
