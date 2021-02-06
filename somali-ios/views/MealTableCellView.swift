//
//  MealTableCellView.swift
//  somali-ios
//
//  Created by greta.chang on 2/5/21.
//  Copyright © 2021 greta.chang. All rights reserved.
//

import UIKit

class MealTableCellView: UITableViewCell {
    /*
     @IBOutlet weak var nameLabel: UILabel!
     @IBOutlet weak var photoImageView: UIImageView!
     @IBOutlet weak var ratingControl: RatingControl!
     */
    
    // MARK: Views
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let photoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let ratingControl: RatingControl = {
        let control = RatingControl()
        control.translatesAutoresizingMaskIntoConstraints = false
        return control
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
