//
//  MealViewController.swift
//  somali-ios
//
//  Created by greta.chang on 2/5/21.
//  Copyright © 2021 greta.chang. All rights reserved.
//

import UIKit

class MealViewController: UIViewController {
    
    // MARK: Views
    private let nameTextField: UITextField = {
        let textField = UITextField().withoutAutoConstraints()
        textField.text = "Default title"
        return textField
    }()
    
    private let photoImageView: UIImageView = {
        let imageView = UIImageView().withoutAutoConstraints()
        imageView.image = UIImage(named: "defaultPhoto")
        return imageView
    }()
    
    private let ratingControl: RatingControl = {
        let ratingControl = RatingControl().withoutAutoConstraints()
        return ratingControl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initView()
    }
    
    // MARK: private methods
    private func initView() {
        let stackView = UIStackView().withoutAutoConstraints()
        view.addSubview(stackView)
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        stackView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 8).isActive = true
        stackView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: 8).isActive = true
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.spacing = 8
        stackView.addArrangedSubview(nameTextField)
        stackView.addArrangedSubview(photoImageView)
        stackView.addArrangedSubview(ratingControl)
    }
}
