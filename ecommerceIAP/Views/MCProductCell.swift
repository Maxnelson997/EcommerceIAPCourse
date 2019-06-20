//
//  MCProductCell.swift
//  ecommerceIAP
//
//  Created by Max Nelson on 6/20/19.
//  Copyright © 2019 Maxcodes. All rights reserved.
//

import UIKit

class MCProductCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = .blue
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
