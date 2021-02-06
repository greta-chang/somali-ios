//
//  Meal.swift
//  somali-ios
//
//  Created by greta.chang on 2/5/21.
//  Copyright © 2021 greta.chang. All rights reserved.
//

import UIKit

class Meal {
    // MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    // MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int) {
        if (name.isEmpty || rating < 0) {
            return nil
        }
        
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
