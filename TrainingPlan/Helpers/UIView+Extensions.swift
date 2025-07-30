//
//  UIView+Extensions.swift
//  TrainingPlan
//
//  Created by Nikita Khon on 30.07.2025.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        views.forEach { addSubview($0) }
    }
}
