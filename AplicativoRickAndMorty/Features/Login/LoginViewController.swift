//
//  ViewController.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 17/10/25.
//

import UIKit

protocol LoginViewControllerDisplay: AnyObject{
    
}

class LoginViewController: UIViewController {
    
    var screen: LoginScreen?
    let interactor: LoginInteracting?
    
    init(interactor: LoginInteracting?) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
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
        interactor?.navigationRegisterInteractor()
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

extension LoginViewController: LoginViewControllerDisplay {
    
}
