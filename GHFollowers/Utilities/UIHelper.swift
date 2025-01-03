//
//  UIHelper.swift
//  GHFollowers
//
//  Created by Adam Amangeldiev on 2025/1/2.
//

import UIKit


struct UIHelper {
    static func createThreeCollumnFlowLayout(in view: UIView) -> UICollectionViewFlowLayout {
        let width = view.bounds.width
        let padding: CGFloat = 12
        let minimumItemSpacing: CGFloat = 10
        let availableWidth = width - (padding * 2) - (minimumItemSpacing * 2)
        let itemWidth = availableWidth / 3
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumLineSpacing = minimumItemSpacing
        
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize  = CGSize(width: itemWidth, height: itemWidth + 40)
        
        
        return flowLayout
    }
}
