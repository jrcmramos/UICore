//
//  RoundedButton.swift
//  TimePlaces
//
//  Created by José Ramos on 14/11/2017.
//  Copyright © 2017 José Ramos. All rights reserved.
//

import UIKit

@IBDesignable
public final class RoundedButton: UIButton {
    
    public var cornerRadius: CGFloat = 5.0 {
        didSet {
            self.setNeedsLayout()
            self.layoutIfNeeded()
        }
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    private func commonInit() {
        self.clipsToBounds = true
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = self.cornerRadius
    }
    
}
