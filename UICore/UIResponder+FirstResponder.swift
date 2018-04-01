//
//  UIResponder+FirstResponder.swift
//  TimePlaces
//
//  Created by José Ramos on 22.01.18.
//  Copyright © 2018 José Ramos. All rights reserved.
//

import UIKit

public extension UIResponder {
    
    private weak static var _currentFirstResponder: UIResponder? = nil
    
    public static var first: UIResponder? {
        UIResponder._currentFirstResponder = nil
        UIApplication.shared.sendAction(#selector(findFirstResponder(sender:)), to: nil, from: nil, for: nil)
        return UIResponder._currentFirstResponder
    }
    
    @objc private func findFirstResponder(sender: AnyObject) {
        UIResponder._currentFirstResponder = self
    }
    
}
