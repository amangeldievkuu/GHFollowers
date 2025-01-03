//
//  GFSecondaryTitleLabel.swift
//  GHFollowers
//
//  Created by Adam Amangeldiev on 2025/1/3.
//

import UIKit

class GFSecondaryTitleLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder: ) has not been implemented")
    }
    
    
    init(size: CGFloat){
        super.init(frame: .zero)
        font = UIFont.systemFont(ofSize: size, weight: .medium)
        configure()
    }
    
    
    func configure() {
        textColor = .secondaryLabel
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.90
        lineBreakMode = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false
    }
}
