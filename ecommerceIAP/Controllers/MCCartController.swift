//
//  MCCartController
//  ecommerceIAP
//
//  Created by Max Nelson on 6/19/19.
//  Copyright © 2019 Maxcodes. All rights reserved.
//

import UIKit

class MCCartController: UIViewController {
    
    fileprivate let tableView: UITableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        navigationItem.title = "cart"
        
        setupTableView()
        setupCartLabels()
        setupCartButtons()
    }
    
    fileprivate func setupTableView() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -300).isActive = true
        
        tableView.register(MCCartCell.self, forCellReuseIdentifier: "CELL")
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.separatorStyle = .none
    }
    fileprivate func setupCartLabels() {
        
    }
    
    fileprivate func setupCartButtons() {
        
    }
}

extension MCCartController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}

extension MCCartController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath) as! MCCartCell
        let product = products[indexPath.row]
        cell.product = product
        cell.selectionStyle = .none
        return cell
    }
}



