//
//  MealViewController.swift
//  somali-ios
//
//  Created by greta.chang on 2/5/21.
//  Copyright © 2021 greta.chang. All rights reserved.
//

import UIKit

class MealViewController: UIViewController,
        UIImagePickerControllerDelegate,
        UINavigationControllerDelegate {
    
    // MARK: Properties
    
    // MARK: Views
    private let nameTextField: UITextField = {
        let textField = UITextField().withoutAutoConstraints()
        textField.text = "Default title"
        return textField
    }()
    
    private let photoImageView: UIImageView = {
        let imageView = UIImageView().withoutAutoConstraints()
        imageView.image = UIImage(named: "defaultPhoto")
        imageView.heightAnchor.constraint(equalToConstant: 320).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 320).isActive = true
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
    
    // MARK: UIImagePickerControllerDelegate
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        // Dismiss the picker if the user cancelled
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(
        _ picker: UIImagePickerController,
        didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]
    ) {
        // The info dictionary may contain multiple representations of the image. You want to use the original.
        guard let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        
        // Set photoImageView to display the image
        photoImageView.image = selectedImage
        
        // Dismiss the picker
        dismiss(animated: true, completion: nil)
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
        
        // Add views to stackView
        stackView.addArrangedSubview(nameTextField)
        stackView.addArrangedSubview(photoImageView)
        stackView.addArrangedSubview(ratingControl)
        
        // Set up tap gesture recognizer for photoImageView
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.selectImageFromPhotoLibrary))
        photoImageView.isUserInteractionEnabled = true
        photoImageView.addGestureRecognizer(tapGesture)
    }
    
    @objc private func selectImageFromPhotoLibrary() {
        // Hide the Keyboard
        nameTextField.resignFirstResponder()
        
        // UIImagePickerController is a view controller that lets a user pick media from their photo library
        let imagePickerController = UIImagePickerController()
        
        // Only allow photos to be picked, not taken
        imagePickerController.sourceType = .photoLibrary
        
        // Make sure ViewController is notified when the user picks an image
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }
}
