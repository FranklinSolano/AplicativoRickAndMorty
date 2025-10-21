//
//  LoginPresenter.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 21/10/25.
//

import Foundation

protocol LoginPresenting {
    func navigationRegisterPresenter()
}

final class LoginPresenter {
    
    weak var view: LoginViewControllerDisplay?
    let coordinator: LoginCoordinating?
    
    init(view: LoginViewControllerDisplay? = nil, coordinator: LoginCoordinating?) {
        self.view = view
        self.coordinator = coordinator
    }
    
}

extension LoginPresenter: LoginPresenting {
    func navigationRegisterPresenter() {
        coordinator?.navigationRegisterCoordinator()
    }
    
    
}
