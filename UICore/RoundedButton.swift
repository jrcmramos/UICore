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
    
    public var cornerRadius: CGFloat = 15.0 {
        didSet {
            self.setNeedsDisplay()
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
    
    override public func draw(_ rect: CGRect) {
        super.draw(rect)
        
        self.layer.cornerRadius = self.cornerRadius
    }
    
}
