//
//  UICollectionView+Cells.swift
//  UICore
//
//  Created by José Ramos on 01.04.18.
//  Copyright © 2018 José Ramos. All rights reserved.
//

import UIKit

public extension UICollectionView {
    
    func register<T: UICollectionViewCell & NIBLoadable>(cell: T.Type) {
        self.register(T.nib, forCellWithReuseIdentifier: T.nibName)
    }
    
    func dequeue<T: UICollectionViewCell & NIBLoadable>(cell: T.Type, indexPath: IndexPath) -> T {
        return self.dequeueReusableCell(withReuseIdentifier: T.nibName, for: indexPath) as! T
    }
    
}
