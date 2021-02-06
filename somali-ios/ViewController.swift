//
//  ViewController.swift
//  somali-ios
//
//  Created by greta.chang on 2/5/21.
//  Copyright © 2021 greta.chang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    var meals = [Meal]()
    
    // MARK: Views
    
    private let tableView: UITableView = {
        let view = UITableView()
        view.translatesAutoresizingMaskIntoConstraints = false
        //view.contentInsetAdjustmentBehavior = .never
        view.rowHeight = 90
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpTableView()
    }
    
    private func setUpTableView() {
        
        // Add tableView to the root view
        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        
    }


}

