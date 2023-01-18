//
//  CustomTextField.swift
//  ProgrammaticUISeries
//
//  Created by Macbook Air on 25.11.2022.
//

import UIKit

class CustomTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(isSecureText: Bool, textColor: UIColor) {
        self.init(frame: .zero)
        set(isSecureText: isSecureText, textColor: textColor)
    }
    
    func configure() {
        borderStyle       = .none
        backgroundColor   = .systemGray5
    }
    
    private func set(isSecureText: Bool, textColor: UIColor) {
        isSecureTextEntry = isSecureText
        self.textColor         = textColor
    }
    

}
