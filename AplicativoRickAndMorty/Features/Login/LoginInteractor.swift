//
//  LoginInteractor.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 21/10/25.
//

import Foundation

protocol LoginInteracting {
    func navigationRegisterInteractor()
    
}

final class LoginInteractor {
    
    let presenter: LoginPresenting?
    private let service: LoginServicing?
    
    init(presenter: LoginPresenting, service: LoginServicing) {
        self.presenter = presenter
        self.service = service
    }
    
}

extension LoginInteractor: LoginInteracting {
    func navigationRegisterInteractor() {
        presenter?.navigationRegisterPresenter()
    }
    
    
}


