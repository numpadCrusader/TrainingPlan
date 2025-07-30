//
//  PaddedTextField.swift
//  TrainingPlan
//
//  Created by Nikita Khon on 30.07.2025.
//

import UIKit

final class PaddedTextField: UITextField {
    
    private let textPadding = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
    
    init(placeholder: String) {
        super.init(frame: .zero)
        
        attributedPlaceholder = NSAttributedString(
            string: placeholder,
            attributes: [.foregroundColor: UIColor.hintTextGray])
        
        backgroundColor = .secondaryBackground
        tintColor = .mainGreen
        textColor = .mainTextGray
        font = .systemFont(ofSize: 17)
        layer.cornerRadius = 16
        clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: textPadding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: textPadding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: textPadding)
    }
}
