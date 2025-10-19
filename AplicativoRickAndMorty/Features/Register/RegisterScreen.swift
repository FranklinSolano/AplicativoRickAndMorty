//
//  RegisterScreen.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 19/10/25.
//

import UIKit

final class RegisterScreen: UIView {
    
    private lazy var imageBackGroud: ImageViewing = DSImageViewAdapter(image: UIImage(named: "imageRegister"))
    private lazy var backButton: Buttoning = DSButtonTitlesAdapter()
    private lazy var nameLabel: Labeling = DSLLabelAdapter()
    private lazy var nameTextField: TextFielding = DSTextFieldAdapter()
    private lazy var emailLabel: Labeling = DSLLabelAdapter()
    private lazy var emailTextField: TextFielding = DSTextFieldAdapter()
    private lazy var passwordLabel: Labeling = DSLLabelAdapter()
    private lazy var passswordTextField: TextFielding = DSTextFieldAdapter()
    private lazy var confirmadPasswordLabel: Labeling = DSLLabelAdapter()
    private lazy var confirmadPasswordTextField: TextFielding = DSTextFieldAdapter()
    private lazy var registerButton: Buttoning = DSButtonAdapter()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configSetup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configlabel(){
        nameLabel.setDTO(with: .init(text: "Name:"))
        emailLabel.setDTO(with: .init(text: "Email:"))
        passwordLabel.setDTO(with: .init(text: "Password"))
        confirmadPasswordLabel.setDTO(with: .init(text: "ConfirmadPassword"))
    }
    
    private func configTExtField(){
        nameTextField.setDTO(.init(placeholder: "Tyoe name", isSecureText: false))
        emailTextField.setDTO(.init(placeholder: "Type email", isSecureText: false))
        passswordTextField.setDTO(.init(placeholder: "Type passwword", isSecureText: true))
        confirmadPasswordTextField.setDTO(.init(placeholder: "Type password", isSecureText: true))
    }
    
    private func configButton() {
        backButton.setDTO(.init(title: "Back <-", isEnable: true, font: DSFonts.titleBold18))
        backButton.onClick {
            
        }
        
        registerButton.setDTO(.init(title: "Register", isEnable: true, font: DSFonts.titleBold18))
        registerButton.onClick {
            
        }
    }
    
}

extension RegisterScreen: ViewCodeProtocol {
    func configElements() {
        [imageBackGroud, backButton, nameLabel, nameTextField, emailLabel, emailTextField, passwordLabel, passswordTextField, confirmadPasswordLabel, confirmadPasswordTextField, registerButton].forEach(addSubview)
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            
            imageBackGroud.topAnchor.constraint(equalTo: topAnchor),
            imageBackGroud.bottomAnchor.constraint(equalTo: bottomAnchor),
            imageBackGroud.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageBackGroud.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            
            nameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 90),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            nameTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 25),
            nameTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            nameTextField.heightAnchor.constraint(equalToConstant: 50),
            
            emailLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor,constant: 15),
            emailLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 10),
            emailTextField.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            emailTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),

            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor,constant: 15),
            passwordLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            
            passswordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 10),
            passswordTextField.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            passswordTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            passswordTextField.heightAnchor.constraint(equalToConstant: 50),
            
            confirmadPasswordLabel.topAnchor.constraint(equalTo: passswordTextField.bottomAnchor,constant: 15),
            confirmadPasswordLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            
            confirmadPasswordTextField.topAnchor.constraint(equalTo: confirmadPasswordLabel.bottomAnchor, constant: 10),
            confirmadPasswordTextField.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            confirmadPasswordTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            confirmadPasswordTextField.heightAnchor.constraint(equalToConstant: 50),
            
            registerButton.topAnchor.constraint(equalTo: confirmadPasswordTextField.bottomAnchor,constant: 55),
            registerButton.heightAnchor.constraint(equalToConstant: 50),
            registerButton.widthAnchor.constraint(equalToConstant: 190),
            registerButton.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
    }
    
    func configadditionalConfiguration() {
        backgroundColor = .clear
        configlabel()
        configTExtField()
        configButton()
    }
    
    
}
