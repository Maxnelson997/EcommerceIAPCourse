//
//  MCButton.swift
//  ecommerceIAP
//
//  Created by Max Nelson on 6/19/19.
//  Copyright © 2019 Maxcodes. All rights reserved.
//

import UIKit

class MCButton: UIButton {
    init(text: String, width: CGFloat = 108, height: CGFloat = 45, hasShadow: Bool = true) {
        super.init(frame: .zero)
        
        hasShadow ? setupShadow(width, height) : ()
        setupConstraints(width, height)
        setupStyles(text)
    }
    
    fileprivate func setupShadow(_ width: CGFloat, _ height: CGFloat) {
        let shadowSize: CGFloat = 20
        let contactRect = CGRect(x: 0, y: height - (shadowSize * 0.6), width: width, height: shadowSize)
        layer.shadowPath = UIBezierPath(ovalIn: contactRect).cgPath
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.8
        layer.shadowColor = UIColor.red.cgColor
    }
    
    fileprivate func setupConstraints(_ width: CGFloat,_ height: CGFloat) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.widthAnchor.constraint(equalToConstant: width).isActive = true
        self.heightAnchor.constraint(equalToConstant: height).isActive = true
    }
    
    fileprivate func setupStyles(_ text: String) {
        backgroundColor = .red
        setTitle(text, for: .normal)
        layer.cornerRadius = 22.5
        titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
