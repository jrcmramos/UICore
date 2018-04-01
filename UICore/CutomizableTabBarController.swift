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
    
    func configureTabBar(imageWithName: String, selectedImageWithName: String) {
        let tabBarItem = UITabBarItem(title: nil,
                                      image: UIImage(named: imageWithName)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal),
                                      selectedImage: UIImage(named: selectedImageWithName)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal))
        tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0)
        tabBarItem.title = nil
        self.tabBarItem = tabBarItem
    }
}
