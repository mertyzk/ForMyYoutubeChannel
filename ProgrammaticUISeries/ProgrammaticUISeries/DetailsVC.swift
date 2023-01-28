//
//  DetailsVC.swift
//  ProgrammaticUISeries
//
//  Created by Macbook Air on 28.01.2023.
//

import UIKit

class DetailsVC: UITableViewController {
    
    //MARK: - UI Elements
    //lazy var tableView = UITableView()
    
    
    var testArray: [Mock] = [Mock(name: "Linkedin"), Mock(name: "Facebook"), Mock(name: "Github"), Mock(name: "Twitter")]

    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureTableView()
    }
    
    
    //MARK: - Helpers
    private func configureTableView() {
        tableView.frame    = view.bounds
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.reuseID)
    }
}


//MARK: - UITableViewDelegate
extension DetailsVC {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("---->>> DEBUG: \(indexPath.row)")
    }
}


//MARK: - UITableViewDataSource
extension DetailsVC {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseID, for: indexPath) as! TableViewCell
        cell.textLabel?.text = "Test"
        return cell
    }
}
