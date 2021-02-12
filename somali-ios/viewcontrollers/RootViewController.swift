//
//  RootNavigationController.swift
//  somali-ios
//
//  Created by greta.chang on 2/10/21.
//  Copyright © 2021 greta.chang. All rights reserved.
//

import UIKit

class RootViewController: UINavigationController {
    
    // MARK: Views
    private let navigation: UINavigationBar = {
        let bar = UINavigationBar().withoutAutoConstraints()
        return bar
    }()
    
    private let addButton:UIBarButtonItem = {
        let button = UIBarButtonItem(
            barButtonSystemItem: UIBarButtonItem.SystemItem.add,
            target: nil,
            action: nil)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
         let rootViewController = UITabBarController() // Lets assume this is your root view controller
         let modalViewController = UIViewController() // Lets assume this is the view controller you want to present modally

         // Here we wrap the modal controller in a navigation controller and then present it modally
         let navigationController = UINavigationController(rootViewController: modalViewController)
         rootViewController.present(navigationController, animated: true, completion: nil)
         */
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let mealViewController = MealViewController()
        let navigationController = UINavigationController(rootViewController: mealViewController)
        present(navigationController, animated: true, completion: nil)
    }
}
