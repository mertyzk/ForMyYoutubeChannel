//
//  HomeView.swift
//  LifeCycleMethods
//
//  Created by Macbook Air on 25.08.2023.
//

import UIKit

class HomeView: UIView {
    
    // MARK: - UI Elements
    lazy var testButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .black
        return button
    }()
    
    
    // MARK: - Initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Helper Functions
    private func configureUI() {
        addSubview(testButton)
        testButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            testButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            testButton.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
