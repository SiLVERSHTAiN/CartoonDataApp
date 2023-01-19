//
//  CharacterListView.swift
//  CartoonDataApp
//
//  Created by Aleksandr on 18.01.2023.
//

import UIKit

/// View that handles showing list of characters, loader, etc.
final class CharacterListView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .systemBlue
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
}
