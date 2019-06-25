//
//  MCProduct.swift
//  ecommerceIAP
//
//  Created by Max Nelson on 6/21/19.
//  Copyright © 2019 Maxcodes. All rights reserved.
//

import Foundation

struct MCProduct {
    let _id, creditPrice, rating: Int
    let title, author, imageUrl: String
    var inCart: Bool
    // owned
}
//
//var products = [MCProduct]()

var products:[MCProduct] = [
    MCProduct(_id: 0, creditPrice: 1, rating: 5, title: "Can't Hurt Me", author: "David Goggins", imageUrl: "2", inCart: false),
    MCProduct(_id: 1, creditPrice: 1, rating: 4, title: "The Alchemist", author: "Paulo Author", imageUrl: "1", inCart: false),
    MCProduct(_id: 2, creditPrice: 2, rating: 3, title: "Product Title", author: "maxcodes.io", imageUrl: "0", inCart: false)
]
