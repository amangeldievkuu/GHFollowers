//
//  GFTabBarContoller.swift
//  GHFollowers
//
//  Created by Adam Amangeldiev on 2025/1/6.
//

import UIKit

class GFTabBarContoller: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = UIColor.systemGreen
        viewControllers = [createSearchNavigationViewController(), createFavoritesListNavigationViewController()]
    }
    

    func createSearchNavigationViewController() -> UINavigationController {
        let searchVC = SearchVC()
        searchVC.title = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarItem.SystemItem.search, tag: 0)
        
        return UINavigationController(rootViewController: searchVC)
    }
    
    
    func createFavoritesListNavigationViewController() -> UINavigationController {
        let favoritesLIstVC = FavoritesListVC()
        favoritesLIstVC.title = "Favorites"
        favoritesLIstVC.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarItem.SystemItem.favorites, tag: 1)
        
        return UINavigationController(rootViewController: favoritesLIstVC)
    }

}
