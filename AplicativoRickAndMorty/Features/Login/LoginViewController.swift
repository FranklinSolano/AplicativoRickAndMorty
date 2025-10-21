//
//  ViewController.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 17/10/25.
//

import UIKit

class LoginViewController: UIViewController {
    
    var screen: LoginScreen?
    
    override func loadView() {
        screen = LoginScreen()
        view = screen
        screen?.delegate(delegate: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

extension LoginViewController: LoginScreenProtocol {
    func actionRegisterButton() {
        var vc = RegisterViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func actionForgotPasswordButton() {
        var vc = ForgotPassrodViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func actionHomeButton() {
//        var vc = TabBarViewController()
//        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
