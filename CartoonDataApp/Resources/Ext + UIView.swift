//
//  Ext + UIView.swift
//  CartoonDataApp
//
//  Created by Aleksandr on 21.01.2023.
//

import UIKit

extension UIView {
    
    func addSubviews(_ view: UIView...) {
        view.forEach({
            addSubview($0)
        })
    }
}
