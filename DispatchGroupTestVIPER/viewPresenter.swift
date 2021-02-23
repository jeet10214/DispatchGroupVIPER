//
//  viewPresenter.swift
//  DispatchGroupTestVIPER
//
//  Created by Jeet Kapadia on 21/02/21.
//

import Foundation

final class viewPresenter : viewModuleInputProtocol, viewOutputProtocol {
    
    weak var view: viewInputProtocol?
    
    var interactor: viewInteractorInputProtocol!
    
    var router: viewRouterInputerProtocol!
    
    func userTappedOnButton() {
        
        interactor.callAPIonDispatchGroup()
    }
}

extension viewPresenter : viewInteractorOutputProtocol {
    func success() {
        
        view?.displayMessage(_message: "Hurray!!!!!!")
    }
    
    func failure() {
        
        view?.displayMessage(_message: "Something went terribly wrong. Please try again later.")
    }
}
