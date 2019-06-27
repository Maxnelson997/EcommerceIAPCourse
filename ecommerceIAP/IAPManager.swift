//
//  IAPManager.swift
//  ecommerceIAP
//
//  Created by Max Nelson on 6/26/19.
//  Copyright © 2019 Maxcodes. All rights reserved.
//

import UIKit
import StoreKit

class StoreObserver: NSObject, SKPaymentTransactionObserver {
    
    static var iapObserver = StoreObserver()
    //Initialize the store observer.
    override init() {
        super.init()
        //Other initialization here.
    }
    
    //Observe transaction updates.
    func paymentQueue(_ queue: SKPaymentQueue,updatedTransactions transactions: [SKPaymentTransaction]) {
        //Handle transaction states here.
    }
    
}

