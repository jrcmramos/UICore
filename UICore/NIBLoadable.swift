//
//  NIBLoadable.swift
//  TimePlaces
//
//  Created by Jose.Ramos on 27.10.17.
//  Copyright © 2017 José Ramos. All rights reserved.
//

import UIKit

public protocol NIBLoadable where Self: UIView {
    static var nibName: String { get }
    static var nib: UINib { get }
}

public extension NIBLoadable {
    
    static var nibName: String {
        return String(describing: Self.self).components(separatedBy: ".").last!
    }
    
    static var nib: UINib {
        return UINib(nibName: self.nibName, bundle: Bundle(for: Self.self))
    }
    
    static func selfFromNib(withOwner owner: AnyObject? = nil) -> Self {
        guard let topLevelObjects =  Bundle(for: Self.self).loadNibNamed(self.nibName, owner: owner, options: nil) else {
            fatalError("Could not load NIBLoadable from NIB \(nibName)")
        }
        
        guard let typedObject = topLevelObjects.first(where: { $0 is Self }) as? Self else {
            fatalError("Could not load NIBLoadable from NIB \(nibName)")
        }

        return typedObject
    }
    
}
