//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Adam Amangeldiev on 2025/1/4.
//

import UIKit

extension Date {
    func converToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        
        return dateFormatter.string(from: self)
    }
    
}
