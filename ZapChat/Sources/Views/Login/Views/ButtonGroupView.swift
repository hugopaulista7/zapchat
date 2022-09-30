//
//  ButtonGroupView.swift
//  ZapChat
//
//  Created by Hugo Paulista on 29/09/22.
//

import UIKit

import GoogleSignIn

class ButtonGroupView: UIStackView {
    private let radius: CGFloat = 16
    private let horizontalPadding: CGFloat = 8
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.layer.cornerRadius = radius
        button.setTitle("Login", for: .normal)
        return button
    }()
    
    private lazy var registerButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        button.layer.cornerRadius = radius
        button.setTitle("Register", for: .normal)
        
        return button
    }()
    
    private lazy var gidSigninButton: GIDSignInButton = {
        let button = GIDSignInButton()
        button.layer.cornerRadius = radius
        button.layer.masksToBounds = true
        return button
    }()
    
    init() {
        super.init(frame: .zero)
        self.buildView()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func buildView() {
        distribution = .fillEqually
        axis = .vertical
        alignment = .center
        spacing = 16
        addSubviews()
        constrainLoginButton()
        constrainGidSigninButton()
    }
    
    private func addSubviews() {
        addArrangedSubview(loginButton)
        addArrangedSubview(gidSigninButton)
    }
    
    private func constrainLoginButton() {
        let constraints = [
            loginButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: horizontalPadding),
            loginButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -horizontalPadding),
        ]
        
        constraints.forEach { item in
            item.isActive = true
        }
    }
    
    private func constrainRegisterButton() {
        let constraints = [
            registerButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 162),
            registerButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -horizontalPadding),
            registerButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: horizontalPadding)
        ]
        
        constraints.forEach { item in
            item.isActive = true
        }
            
    }
    private func constrainGidSigninButton() {
        let constraints = [
            gidSigninButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 162),
            gidSigninButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -horizontalPadding),
            gidSigninButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: horizontalPadding)
        ]
        
        constraints.forEach { item in
            item.isActive = true
        }
            
    }
}
