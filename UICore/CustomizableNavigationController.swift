//
//  CustomizableNavigationController.swift
//  UICore
//
//  Created by José Ramos on 16.05.18.
//  Copyright © 2018 José Ramos. All rights reserved.
//

import UIKit

public enum NavigationControllerStyle {
    case background
    case custom(color: UIColor)
}

public protocol CustomizableNavigationController where Self: UIViewController {
    var navigationStyle: NavigationControllerStyle { get }
}

public extension CustomizableNavigationController {
    
    private var navigationBarColor: UIColor {
        switch self.navigationStyle {
        case .background: return self.view.backgroundColor!
        case .custom(let color): return color
        }
    }
    
    func configureNavigationController(preferLargeTitles: Bool = true) {
        guard let navigationBar = self.navigationController?.navigationBar else {
            return
        }
        
        navigationBar.prefersLargeTitles = preferLargeTitles
        navigationBar.backgroundColor = self.navigationBarColor
        navigationBar.isOpaque = true
        navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationBar.shadowImage = UIImage()
        // Set navigation bar title text colour
        self.navigationController!.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
    }
    
    func configureSearchController() {
        let searchController = UISearchController(searchResultsController: nil)
        self.navigationItem.searchController = searchController
    }
}

