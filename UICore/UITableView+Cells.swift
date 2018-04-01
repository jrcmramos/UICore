//
//  UITableView+Cells.swift
//  UICore
//
//  Created by José Ramos on 01.04.18.
//  Copyright © 2018 José Ramos. All rights reserved.
//

import UIKit

public extension UITableView {
    
    func register<T: UITableViewCell & NIBLoadable>(cell: T.Type) {
        self.register(T.nib, forCellReuseIdentifier: T.nibName)
    }
    
    func dequeue<T: UITableViewCell & NIBLoadable>(cell: T.Type, indexPath: IndexPath) -> T {
        return self.dequeueReusableCell(withIdentifier: T.nibName, for: indexPath) as! T
    }
    
}
