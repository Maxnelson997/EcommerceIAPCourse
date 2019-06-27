//
//  IAPManager.swift
//  ecommerceIAP
//
//  Created by Max Nelson on 6/26/19.
//  Copyright © 2019 Maxcodes. All rights reserved.
//

import UIKit
import StoreKit

typealias CompletionHandler = (_ success: Bool) -> ()

class StoreObserver: NSObject, SKPaymentTransactionObserver, SKProductsRequestDelegate {
    
    var transactionComplete: CompletionHandler?
    var isAuthorizedForPayments: Bool {
        return SKPaymentQueue.canMakePayments()
    }
    
    var products = [SKProduct]()
    func purchaseCredit(completion: @escaping CompletionHandler) {
        if SKPaymentQueue.canMakePayments() && products.count > 0 {
            transactionComplete = completion
            let creditProduct = products[0]
            let payment = SKPayment(product: creditProduct)
            SKPaymentQueue.default().add(payment)
        } else {
            print("you can not make payments on this device or there are no products to pay for.")
            completion(false)
        }
    }
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        if response.products.count > 0 {
            print(response.products.debugDescription)
            products = response.products
        }
    }
    
    static var iapObserver = StoreObserver()
    
    var productsRequest: SKProductsRequest!
    
    let IAP_CREDIT_PRODUCT = "99700101"
    
    func fetchProducts() {
        let productIds = NSSet(object: IAP_CREDIT_PRODUCT) as! Set<String>
        productsRequest = SKProductsRequest(productIdentifiers: productIds)
        productsRequest.delegate = self
        productsRequest.start()
    }
    
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

