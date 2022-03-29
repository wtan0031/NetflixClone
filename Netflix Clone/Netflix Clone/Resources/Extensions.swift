//
//  Extensions.swift
//  Netflix Clone
//
//  Created by Wei Liang Tan on 12/03/2022.
//

import Foundation


extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
