//
//  RegisterViewController.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 19/10/25.
//

import UIKit

class RegisterViewController: UIViewController {
    
    var screen: RegisterScreen?
    
    override func loadView() {
        screen = RegisterScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
