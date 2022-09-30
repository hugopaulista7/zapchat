//
//  LoginView.swift
//  ZapChat
//
//  Created by Hugo Paulista on 28/09/22.
//

import UIKit

class LoginView: UIView {
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "ZapChat"
        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var buttonGroup: ButtonGroupView = {
       let buttongroup = ButtonGroupView()
        
        return buttongroup
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.frame = UIScreen.main.bounds
        stackView.alignment = .center

        return stackView
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .black
        addSubviews()
        constrainStackView()
        constrainTitleLabel()
        constrainButtonGroup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubviews() {
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(buttonGroup)
        addSubview(stackView)
    }
    
    private func constrainStackView() {
        let constraints = [
            stackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 64),
            stackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 16)
        ]
        
        constraints.forEach { item in
            item.isActive = true
        }
    }
    
    private func constrainTitleLabel() {
        let constraints = [
            titleLabel.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 64)
        ]
        
        constraints.forEach { item in
            item.isActive = true
        }
    }
    
    private func constrainButtonGroup() {
        let constraints = [
            buttonGroup.topAnchor.constraint(equalTo: centerYAnchor),
            buttonGroup.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -UIScreen.main.bounds.height / 3),
            buttonGroup.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            buttonGroup.trailingAnchor.constraint(equalTo: stackView.trailingAnchor)
        ]
        
        constraints.forEach { item in
            item.isActive = true
        }
        
    }
}
