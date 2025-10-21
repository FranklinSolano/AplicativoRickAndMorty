//
//  ForgotPassrodViewController.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 19/10/25.
//

import UIKit

class ForgotPassrodViewController: UIViewController {
    
    var screen: ForgotPassrodScreen?
    
    override func loadView() {
        screen = ForgotPassrodScreen()
        view = screen
        screen?.delegate(delegate: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}


extension ForgotPassrodViewController: ForgotPassrodProtocol {
    func actionBackButton() {
        navigationController?.popViewController(animated: true)
    }
    
    func actionForgotPasswordButton() {
        //navegacao para login
    }
    
    
}
