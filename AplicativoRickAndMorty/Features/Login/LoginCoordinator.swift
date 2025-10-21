//
//  LoginCoordinator.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 21/10/25.
//

import UIKit

protocol LoginCoordinating {
    func navigationRegisterCoordinator()
}

final class LoginCoordinator {
    var navigation: UINavigationController?
}

extension LoginCoordinator: LoginCoordinating {
    func navigationRegisterCoordinator() {
        let vc = RegisterViewController()
        navigation?.pushViewController(vc, animated: true)
    }
    
    
}
