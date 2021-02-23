//
//  SecondBuilder.swift
//  DispatchGroupTestVIPER
//
//  Created by Jeet Kapadia on 23/02/21.
//

import Foundation
import UIKit

protocol SecondViewBuilderProtocol : AnyObject{
    
    func buildModule() -> SecondVC
}

class SecondViewBuilder : SecondViewBuilderProtocol {
    func buildModule() -> SecondVC {
        
        let view = SecondVC()
        let presenter = SecondViewPresenter()
        let interactor = SecondInteractor()
        let router = SecondRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        router.viewController = view
        
        return view
    }
    
    
}
