//
//  HomepageVC.swift
//  ProgrammaticUISeries
//
//  Created by Macbook Air on 21.09.2022.
//

import UIKit

class HomepageVC: UIViewController {
    
    
    //MARK: - Variables
    lazy var userNameTextField = CustomTextField()
    lazy var passwordTextField = CustomTextField(isSecureText: true, textColor: .green)
    
    lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .red
        button.layer.cornerRadius = 15
        button.setTitleColor(.white, for: .normal)
        button.setTitle("iOS Geliştirici", for: .normal)
        return button
    }()
    
    lazy var homepageStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [userNameTextField, passwordTextField, loginButton])
        stackView.axis = .vertical
        stackView.spacing = 15
        return stackView
    }()
    
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        addTargets()
    }
    
    
    //MARK: - Helpers
    func setupUI() {
        view.backgroundColor = .systemBlue
        //configureUserNameTextField()
       // configurePasswordTextField()
        //configureLoginButton()
        //configureStackView()
        configureWithExtension()
    }
    
    
    func addTargets() {
        loginButton.addTarget(self, action: #selector(loginButtonClicked), for: .touchUpInside)
    }
    
    
    //MARK: - @Actions
    @objc func loginButtonClicked() {
        navigationController?.pushViewController(DetailsVC(), animated: true)
    }

    
    func configureWithExtension() {
        view.addSubviewsFromExt(userNameTextField, passwordTextField, loginButton)
        let standartPadding: CGFloat = 15
        userNameTextField.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: standartPadding, paddingLeft: standartPadding, paddingRight: standartPadding, height: 30)
        passwordTextField.anchor(top: userNameTextField.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: standartPadding, paddingLeft: standartPadding, paddingRight: standartPadding, height: 30)
        loginButton.anchor(top: passwordTextField.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: standartPadding, paddingLeft: standartPadding, paddingRight: standartPadding)
        loginButton.configSize(height: 50, width: 50)
    }
    
    
    /*func configureUserNameTextField() {
        view.addSubview(userNameTextField)
        userNameTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            userNameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            userNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            userNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            userNameTextField.heightAnchor.constraint(equalToConstant: 30)
        ])
    }*/
    
    
    /*func configurePasswordTextField() {
        view.addSubview(passwordTextField)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 30),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            passwordTextField.heightAnchor.constraint(equalToConstant: 30)
        ])
    }*/
    
    
    /*func configureLoginButton(){
        view.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }*/
}
