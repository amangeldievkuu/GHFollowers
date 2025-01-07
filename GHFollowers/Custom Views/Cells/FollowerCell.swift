//
//  FollowerCell.swift
//  GHFollowers
//
//  Created by Adam Amangeldiev on 2025/1/1.
//

import UIKit

class FollowerCell: UICollectionViewCell {
    
    static let reuseID = "FollowerCell"
    let avatarImageview = GFAvatarImageView(frame: .zero)
    let usernameLabel = GFTitleLabel(textAlignment: .center, fontSize: 16)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func set(follower: Follower) {
        usernameLabel.text = follower.login
        NetworkManager.shared.downloadImage(from: follower.avatarUrl) { [weak self] image in
            guard let self = self else { return }
            DispatchQueue.main.async { self.avatarImageview.image = image }
        }
    }
    
    
    private func configure() {
        let padding: CGFloat = 8
        addSubviews(avatarImageview, usernameLabel)
        
        NSLayoutConstraint.activate([
            avatarImageview.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            avatarImageview.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            avatarImageview.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            avatarImageview.heightAnchor.constraint(equalTo: avatarImageview.widthAnchor),
            
            usernameLabel.topAnchor.constraint(equalTo: avatarImageview.bottomAnchor, constant: 12),
            usernameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            usernameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            usernameLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
}
