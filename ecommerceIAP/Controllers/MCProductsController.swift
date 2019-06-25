//
//  MCProductsController
//  ecommerceIAP
//
//  Created by Max Nelson on 6/19/19.
//  Copyright © 2019 Maxcodes. All rights reserved.
//

import UIKit


class MCProductsController: UIViewController {
    
    fileprivate let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        navigationItem.title = "maxreads"
        
        setupAddToCartButton()
        setupTableView()
    }
    
    fileprivate func setupAddToCartButton() {
        let cart = MCButton(text: "Cart")
        view.addSubview(cart)
        
        cart.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -25).isActive = true
        cart.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        
        cart.addTarget(self, action: #selector(handleGoToCart), for: .touchUpInside)
    }
    
    @objc fileprivate func handleGoToCart() {
        navigationController?.pushViewController(MCCartController(), animated: true)
    }
    
    fileprivate func setupTableView() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        
        tableView.register(MCProductCell.self, forCellReuseIdentifier: "CELL")
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.separatorStyle = .none
    }
}

protocol MCCartProtocol {
    func addProductToCart(product: MCProduct)
}

extension MCProductsController: MCCartProtocol {
    func addProductToCart(product: MCProduct) {
        var productCopy = product
        productCopy.inCart = true
        
        let indexOfProduct = products.firstIndex { (item) -> Bool in
            item._id == productCopy._id
        }
        
        products[indexOfProduct ?? 0] = productCopy
        
        self.tableView.reloadData()
    }
}

extension MCProductsController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

extension MCProductsController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath) as! MCProductCell
        let product = products[indexPath.row]
        cell.product = product
        cell.delegate = self
        cell.selectionStyle = .none
        return cell
    }
}

