//
//  GFItemInfoVC.swift
//  GHFollowers
//
//  Created by Adam Amangeldiev on 2025/1/4.
//

import UIKit

class GFItemInfoVC: UIViewController {
    
    var user: User!
    weak var delegate: UserInfoVCDelegate!
    
    let stackView = UIStackView()
    let actionbutton = GFButton()
    
    let itemInfoViewOne = GFItemInfoView()
    let itemInfoViewTwo = GFItemInfoView()
    
    init(user: User) {
        super.init(nibName: nil, bundle: nil)
        self.user = user
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureBackgroundView()
        layoutUI()
        configureStackView()
        configureActionButton()
    }
    
    
    private func configureBackgroundView() {
        view.layer.cornerRadius = 18
        view.backgroundColor = .secondarySystemBackground
    }
    
    
    private func configureStackView() {
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        
        stackView.addArrangedSubview(itemInfoViewOne)
        stackView.addArrangedSubview(itemInfoViewTwo)
    }
    
    
    private func configureActionButton() {
        actionbutton.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
    }
    
    
    @objc func actionButtonTapped() {}
    
    
    private func layoutUI() {
        let padding: CGFloat = 20
        
        view.addSubview(stackView)
        view.addSubview(actionbutton)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: padding),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            stackView.heightAnchor.constraint(equalToConstant: 50),
            
            actionbutton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding),
            actionbutton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            actionbutton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            actionbutton.heightAnchor.constraint(equalToConstant: 44),
        ])
    }
    
}
