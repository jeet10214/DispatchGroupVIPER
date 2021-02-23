//
//  viewBuilder.swift
//  DispatchGroupTestVIPER
//
//  Created by Jeet Kapadia on 21/02/21.
//

import Foundation

protocol viewModuleBuilderProtocol: AnyObject {
    func buildModule() -> ViewController
}

final class viewModuleBuilder : viewModuleBuilderProtocol {
    func buildModule() -> ViewController {
        
        let vc = ViewController()
        let presenter = viewPresenter()
        let interactor = viewInteractor()
        let router = viewRouter()
        
        presenter.view = vc
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        vc.presenter = presenter
        router.viewController = vc
        
        return vc
    }
}
