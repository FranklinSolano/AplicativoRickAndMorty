//
//  LoginScreen.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 17/10/25.
//

import UIKit

protocol LoginScreenProtocol: AnyObject {
    func actionRegisterButton()
    func actionForgotPasswordButton()
    func actionHomeButton()
}

final class LoginScreen: UIView {
    
    weak var delegate: LoginScreenProtocol?
    func delegate(delegate: LoginScreenProtocol){
        self.delegate = delegate
    }
    
    
    private lazy var imageBackGroud: ImageViewing = DSImageViewAdapter(image: UIImage(named: "imageLogin"))
    private lazy var emailLabel: Labeling = DSLLabelAdapter()
    private lazy var emailTextField: TextFielding = DSTextFieldAdapter()
    private lazy var passwordLabel: Labeling = DSLLabelAdapter()
    private lazy var passwordTextField: TextFielding = DSTextFieldAdapter()
    private lazy var forgotPasswordButton: Buttoning = DSButtonTitlesAdapter()
    private lazy var loginButton:Buttoning = DSButtonAdapter()
    private lazy var registerButton:Buttoning = DSButtonTitlesAdapter()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configSetup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configLabel() {
        emailLabel.setDTO(with: .init(text: "Email:"))
        
        passwordLabel.setDTO(with: .init(text: "Password:"))
        
    }
    
    private func configTextField(){
        emailTextField.setDTO(.init(placeholder: "Digite seu email", isSecureText: false))
        passwordTextField.setDTO(.init(placeholder: "Digite seu email", isSecureText: true))
    }
    
    private func configButton(){
        forgotPasswordButton.setDTO(.init(title: "Esquceu a senha?", isEnable: true, font: UIFont.systemFont(ofSize: 16)))
        forgotPasswordButton.onClick {
            self.delegate?.actionForgotPasswordButton()
        }
        
        loginButton.setDTO(.init(title: "Login", isEnable: true, font: UIFont.systemFont(ofSize: 16)))
        loginButton.onClick {
            self.delegate?.actionHomeButton()
        }
        
        registerButton.setDTO(.init(title: "Nao tem conta? Registra-se?", isEnable: true, font: UIFont.systemFont(ofSize: 16)))
        registerButton.onClick {
            self.delegate?.actionRegisterButton()
        }
    }
    
}

extension LoginScreen: ViewCodeProtocol {
    func configElements() {
        [imageBackGroud, emailLabel, emailTextField, passwordLabel, passwordTextField, forgotPasswordButton, loginButton, registerButton].forEach(addSubview)
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            
            imageBackGroud.topAnchor.constraint(equalTo: topAnchor),
            imageBackGroud.bottomAnchor.constraint(equalTo: bottomAnchor),
            imageBackGroud.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageBackGroud.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            emailLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 60),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 10),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 25),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor,constant: 20),
            passwordLabel.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 10),
            passwordTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            
            forgotPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor,constant: 15),
            forgotPasswordButton.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            
            loginButton.topAnchor.constraint(equalTo: forgotPasswordButton.bottomAnchor,constant: 80),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            loginButton.widthAnchor.constraint(equalToConstant: 190),
            loginButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            registerButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor,constant: -15),
            registerButton.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    func configadditionalConfiguration() {
        backgroundColor = .clear
        configLabel()
        configTextField()
        configButton()
    }
}

