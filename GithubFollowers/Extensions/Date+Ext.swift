//
//  Date.swift
//  GithubFollowers
//
//  Created by Jacob  Loranger on 6/7/24.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
    
}
