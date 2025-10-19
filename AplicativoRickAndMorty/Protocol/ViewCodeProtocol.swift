//
//  ViewCodeProtocol.swift
//  AplicativoRickAndMorty
//
//  Created by Franklin  Stilhano Solano on 19/10/25.
//

protocol ViewCodeProtocol {
    func configElements()
    func configConstraints()
    func configadditionalConfiguration()
    func configSetup()
}

extension ViewCodeProtocol {
    func configSetup() {
        configElements()
        configConstraints()
        configadditionalConfiguration()
    }
}
