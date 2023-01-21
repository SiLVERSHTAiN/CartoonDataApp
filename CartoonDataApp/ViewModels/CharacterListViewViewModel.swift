//
//  CharacterListViewViewModel.swift
//  CartoonDataApp
//
//  Created by Aleksandr on 18.01.2023.
//

import UIKit

final class CharacterListViewViewModel: NSObject {
    
    
    
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

extension CharacterListViewViewModel: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .systemGreen
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = UIScreen.main.bounds // Делает ячейки под размер экрана на котором запущен
        let width = (bounds.width - 30)/2
        return CGSize(width:  width, height: width * 1.5)
    }
}
