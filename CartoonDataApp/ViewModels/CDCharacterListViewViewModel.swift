//
//  CDCharacterListViewViewModel.swift
//  CartoonDataApp
//
//  Created by Aleksandr on 18.01.2023.
//

import UIKit

final class CDCharacterListViewViewModel: NSObject {
    
    private var characters: [CDCharacter] = [] {
        didSet {
            for character in characters {
                let viewModel = CDCharacterCollectionViewCellViewModel(
                    characterName: character.name,
                    characterStatus: character.status,
                    characterImageUrl: URL(string: character.image)
                )
                cellViewModels.append(viewModel)
            }
        }
    }
    private var cellViewModels: [CDCharacterCollectionViewCellViewModel] = []
    
    public func fetchCharacters() {
        
        CDService.share.execute(
            .listCharactersRequests,
            expecting: CDGetCharactersResponce.self
        ) { [weak self]result in
            switch result {
            case .success(let responseModel):
                let results = responseModel.results
                self?.characters = results
             case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}

extension CDCharacterListViewViewModel: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellViewModels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CDCharacterCollectionViewCell.cellIdentifier, for: indexPath
        ) as? CDCharacterCollectionViewCell else {
            fatalError("Unsupported cell")
        }
        cell.configure(with: cellViewModels[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = UIScreen.main.bounds // Делает ячейки под размер экрана на котором запущен
        let width = (bounds.width - 30)/2
        return CGSize(width:  width, height: width * 1.5)
    }
}
