//
//  UIViewController+Ext.swift
//  GHFollowers
//
//  Created by Adam Amangeldiev on 2024/12/24.
//

import UIKit
import SafariServices

extension UIViewController {
    
    func presentSafariVC(with url: URL) {
        let safariVC = SFSafariViewController(url: url)
        safariVC.preferredControlTintColor = .systemGreen
        present(safariVC, animated: true)
    }
    
    
    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String = "OK"){
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
    
}
