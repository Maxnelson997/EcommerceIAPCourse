//
//  MCProductCell.swift
//  ecommerceIAP
//
//  Created by Max Nelson on 6/20/19.
//  Copyright © 2019 Maxcodes. All rights reserved.
//

import UIKit

class MCProductCell: UITableViewCell {
    
    let productImage: UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "1"))
        iv.contentMode = .scaleAspectFit
        iv.layer.masksToBounds = true
//        iv.clips
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.text = "Product Title Here"
        return label
    }()
    
    let authorLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        label.textColor = .gray
        label.text = "Author Name"
        return label
    }()
    
    let creditLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        label.text = "1 Credit"
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = .blue
        setupUI()
    }
    
    fileprivate func setupUI() {
        contentView.addSubview(productImage)
        contentView.addSubview(titleLabel)
        contentView.addSubview(authorLabel)
        contentView.addSubview(creditLabel)
        
        productImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        productImage.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.8).isActive = true
        productImage.widthAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.8).isActive = true
        
        let stackView = UIStackView(arrangedSubviews: [titleLabel, authorLabel, creditLabel])
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(stackView)
        
        stackView.leadingAnchor.constraint(equalTo: productImage.trailingAnchor, constant: 10).isActive = true
        stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
