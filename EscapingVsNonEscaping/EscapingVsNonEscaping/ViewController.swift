//
//  ViewController.swift
//  EscapingVsNonEscaping
//
//  Created by Macbook Air on 4.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - UI Elements
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    // MARK: - @Actions
    @IBAction func clickButtonTapped(_ sender: UIButton) {
        
        fetchData { title, message, status in
            self.titleLabel.text = "\(title)"
            self.messageLabel.text = message
            self.statusLabel.text = status.description
        }
        
    }
    
    
    // MARK: - Helper Functions
    func fetchData(_ completion: @escaping (_ title: Int, _ message: String, _ status: Bool) -> ()) {
        ///
        ///
        ///
        Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { _ in
            completion(123, "TestMsg", true)
        }
        
        

    }

}

