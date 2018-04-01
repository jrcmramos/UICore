//
//  RoundedView.swift
//  TimePlaces
//
//  Created by José Ramos on 15/12/2016.
//  Copyright © 2016 José Ramos. All rights reserved.
//

import UIKit

@IBDesignable
public final class RoundedView: UIView {
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    private func commonInit() {
        self.isOpaque = false
        self.clipsToBounds = true
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = self.layer.bounds.width / 2
    }

}
