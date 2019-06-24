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
    
    fileprivate var effect:UIVisualEffect = UIBlurEffect(style: .prominent)
    fileprivate lazy var blurView:UIVisualEffectView = UIVisualEffectView(effect: effect)
    
    fileprivate func setupViews() {
        let screenFrame = UIScreen.main.bounds
        self.frame = screenFrame
        blurView.frame = screenFrame
        
//        self.backgroundColor = UIColor.gray.withAlphaComponent(0)
        self.addSubview(blurView)
    }
    
    fileprivate func animateIn() {
        
    }
    
    @objc fileprivate func animateOut() {
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
