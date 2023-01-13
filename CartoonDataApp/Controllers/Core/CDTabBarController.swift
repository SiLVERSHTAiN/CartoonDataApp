//
//  CDTabBarController.swift
//  CartoonDataApp
//
//  Created by Aleksandr on 12.01.2023.
//

import UIKit

/// Controller to house tabs and root tab controllers
final class CDTabBarController: UITabBarController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpTabs()
    }
    
    private func setUpTabs() {
        let charactersVC = CDCharacterViewController()
        let locationsVC = CDLocationViewController()
        let episodesVC = CDEpisodeViewController()
        let settingsVC = CDSettingsViewController()

        let nav1 = UINavigationController(rootViewController: charactersVC)
        let nav2 = UINavigationController(rootViewController: locationsVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4  = UINavigationController(rootViewController: settingsVC)
        
        nav1.tabBarItem = UITabBarItem(title: R.Name.characters,
                                       image: UIImage(systemName: "person"),
                                       tag: 1)
        nav2.tabBarItem = UITabBarItem(title: R.Name.location,
                                       image: UIImage(systemName: "globe"),
                                       tag: 2)
        nav3.tabBarItem = UITabBarItem(title: R.Name.episode,
                                       image: UIImage(systemName: "tv"),
                                       tag: 3)
        nav4.tabBarItem = UITabBarItem(title: R.Name.settings,
                                       image: UIImage(systemName: "gear"),
                                       tag: 4)
        
        [nav1, nav2, nav3, nav4].forEach { nav in
            nav.navigationBar.prefersLargeTitles = true
            nav.navigationItem.largeTitleDisplayMode = .always
        }
        
        setViewControllers([nav1, nav2, nav3, nav4], animated: false)
    }
}

