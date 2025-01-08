//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Adam Amangeldiev on 2025/1/8.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
