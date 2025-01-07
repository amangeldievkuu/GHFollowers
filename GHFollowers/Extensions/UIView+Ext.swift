//
//  UIView+Ext.swift
//  GHFollowers
//
//  Created by Adam Amangeldiev on 2025/1/7.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach(addSubview)
    }
}
