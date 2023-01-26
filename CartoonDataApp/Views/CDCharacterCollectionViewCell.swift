//
//  CDCharacterCollectionViewCell.swift
//  CartoonDataApp
//
//  Created by Aleksandr on 24.01.2023.
//

import UIKit

/// Single cell for a character
final class CDCharacterCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "CDCharacterCollectionViewCell"
    
    private let imageView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.font = .systemFont(ofSize: 18, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let statusLabel: UILabel = {
        let label = UILabel()
        label.textColor = .secondaryLabel
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .secondarySystemBackground
        contentView.addSubviews(imageView, nameLabel, statusLabel)
        addComstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
    
    private func addComstraints() {}
    
    override func prepareForReuse() {
        
    }
    
    public func configure(with viewModel: CDCharacterCollectionViewCellViewModel) {
        
    }
}
