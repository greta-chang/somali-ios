//
//  UIView+Extensions.swift
//  somali-ios
//
//  Created by greta.chang on 2/5/21.
//  Copyright © 2021 greta.chang. All rights reserved.
//

import UIKit

extension UIView {
    func withoutAutoConstraints() -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        return self
    }
}
