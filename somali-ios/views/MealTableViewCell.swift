//
//  MealTableViewCell.swift
//  somali-ios
//
//  Created by greta.chang on 2/5/21.
//  Copyright © 2021 greta.chang. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {
    
    // MARK: Properties
    
    public static let identifier = "MealTableViewCell"

    // MARK: Views
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let photoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.heightAnchor.constraint(equalToConstant: 90).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 90).isActive = true
        return imageView
    }()
    
    let ratingControl: RatingControl = {
        let control = RatingControl()
        control.translatesAutoresizingMaskIntoConstraints = false
        control.isUserInteractionEnabled = false
        return control
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Private methods
    private func setupView() {
        contentView.heightAnchor.constraint(equalToConstant: 90).isActive = true
        
        // Add and constrain the photo view
        contentView.addSubview(photoImageView)
        photoImageView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        photoImageView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        photoImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        
        // Add and constrain the name label
        contentView.addSubview(nameLabel)
        nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: photoImageView.rightAnchor, constant: 8).isActive = true
        nameLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 8).isActive = true
        
        // Add and constrain the rating control
        contentView.addSubview(ratingControl)
        ratingControl.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4).isActive = true
        ratingControl.leftAnchor.constraint(equalTo: photoImageView.rightAnchor, constant: 8).isActive = true
    }
}
