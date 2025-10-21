//
//  ForgotPassrodScreen.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 19/10/25.
//

import UIKit

protocol ForgotPassrodProtocol: AnyObject {
    func actionBackButton()
    func actionForgotPasswordButton()
}

class ForgotPassrodScreen: UIView {
    
    weak var delegate: ForgotPassrodProtocol?
    func delegate(delegate: ForgotPassrodProtocol){
        self.delegate = delegate
    }
    
    private lazy var imageBackGroud: ImageViewing = DSImageViewAdapter(image: UIImage(named: "imageForgotPassword"))
    private lazy var backButton: Buttoning = DSButtonTitlesAdapter()
    private lazy var titleLabel: Labeling = DSLLabelAdapter()
    private lazy var emailLabel: Labeling = DSLLabelAdapter()
    private lazy var emailTextField: TextFielding = DSTextFieldAdapter()
    private lazy var forgotAPsswordButton: Buttoning = DSButtonAdapter()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configSetup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configLabel(){
        titleLabel.setDTO(with: .init(text: "Informe seu email cadastrado para redefinar a senha", textcolor: DSColors.textColorTitle, font: DSFonts.titleBold22, numberOdLines: 0, textAlignment: .center))
        emailLabel.setDTO(with: .init(text: "Email"))
    }
    
    private func configTextField(){
        emailTextField.setDTO(.init(placeholder: "Type email", isSecureText: false))
    }
    
    private func configButton(){
        backButton.setDTO(.init(title: "Back <-", isEnable: true, font: DSFonts.titleBold18))
        backButton.onClick {
            self.delegate?.actionBackButton()
        }
        
        forgotAPsswordButton.setDTO(.init(title: "Enter", isEnable: true, font: DSFonts.titleBold18))
        forgotAPsswordButton.onClick {
            self.delegate?.actionForgotPasswordButton()
        }
    }
    
}

extension ForgotPassrodScreen: ViewCodeProtocol {
    func configElements() {
        [imageBackGroud, backButton, titleLabel, emailLabel, emailTextField, forgotAPsswordButton].forEach(addSubview)
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            
            imageBackGroud.topAnchor.constraint(equalTo: topAnchor),
            imageBackGroud.bottomAnchor.constraint(equalTo: bottomAnchor),
            imageBackGroud.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageBackGroud.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            
            titleLabel.topAnchor.constraint(equalTo: backButton.bottomAnchor,constant: 50),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 40),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -40),
            
            emailLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 30),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 10),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 25),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            
            forgotAPsswordButton.topAnchor.constraint(equalTo: emailTextField.bottomAnchor,constant: 55),
            forgotAPsswordButton.heightAnchor.constraint(equalToConstant: 50),
            forgotAPsswordButton.widthAnchor.constraint(equalToConstant: 190),
            forgotAPsswordButton.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    func configadditionalConfiguration() {
        backgroundColor = .clear
        configLabel()
        configTextField()
        configButton()
    }
    
    
}
