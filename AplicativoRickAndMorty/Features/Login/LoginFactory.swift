//
//  LoginFactory.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 21/10/25.
//

import UIKit

final class LoginFactory {
    
    func makeFactory(navigation: UINavigationController) -> (viewController: LoginViewController, coordinator: LoginCoordinator) {
        let coordinator = LoginCoordinator()
        coordinator.navigation = navigation
        
        let service = LoginService()
        
        let presenter = LoginPresenter(view: nil, coordinator: coordinator)
        
        let interactor = LoginInteractor(presenter: presenter, service: service)
        
        let loginVc = LoginViewController(interactor: interactor)
        presenter.view = loginVc
        
        return (loginVc, coordinator)
    }
    
}
