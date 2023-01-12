//
//  CDCharacterViewController.swift
//  CartoonDataApp
//
//  Created by Aleksandr on 12.01.2023.
//

import UIKit

final class CDCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground // адаптировано под темную и светлую тему
        title = R.Name.characters
    }

}