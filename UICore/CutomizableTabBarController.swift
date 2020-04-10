//
//  CutomizableTabBarController.swift
//  UICore
//
//  Created by José Ramos on 16.05.18.
//  Copyright © 2018 José Ramos. All rights reserved.
//

import UIKit

public protocol CustomizableTabBarController where Self: UIViewController {}

public extension CustomizableTabBarController {
    
    func configureTabBar(image: UIImage, selectedImage: UIImage) {
        let tabBarItem = UITabBarItem(title: nil,
                                      image: image.withRenderingMode(.alwaysOriginal),
                                      selectedImage: selectedImage.withRenderingMode(.alwaysOriginal))
        tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        tabBarItem.title = nil
        self.tabBarItem = tabBarItem
    }
}
