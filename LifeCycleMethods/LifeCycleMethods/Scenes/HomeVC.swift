//
//  HomeVC.swift
//  LifeCycleMethods
//
//  Created by Macbook Air on 25.08.2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    let homeView = HomeView()
    
    
    
    override func loadView() {
        print("xxxxxxxxxxx DEBUG: loadView")
        view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureActions()
    }
    
    
    // MARK: - Helper Functions
    private func configureActions() {
        homeView.testButton.addTarget(self, action: #selector(testButtonTapped), for: .touchUpInside)
    }
    
    
    @objc func testButtonTapped() {
        print("xxxxxxxxxxx DEBUG: TEST BUTTON TIKLANDI")
    }
    
}
