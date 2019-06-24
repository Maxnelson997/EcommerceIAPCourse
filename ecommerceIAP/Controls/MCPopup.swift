//
//  MCPopup.swift
//  ecommerceIAP
//
//  Created by Max Nelson on 6/23/19.
//  Copyright © 2019 Maxcodes. All rights reserved.
//

import UIKit

class MCPopup:UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        animateIn()
        addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(animateOut)))
    }
    
    fileprivate func setupViews() {
        
    }
    
    fileprivate func animateIn() {
        
    }
    
    @objc fileprivate func animateOut() {
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
