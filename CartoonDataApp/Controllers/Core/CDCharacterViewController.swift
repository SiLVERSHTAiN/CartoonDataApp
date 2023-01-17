//
//  CDCharacterViewController.swift
//  CartoonDataApp
//
//  Created by Aleksandr on 12.01.2023.
//

import UIKit

/// Controller to show and search for Characters
final class CDCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground // адаптировано под темную и светлую тему
        title = R.Name.characters
        
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
