//
//  SecondPresenter.swift
//  DispatchGroupTestVIPER
//
//  Created by Jeet Kapadia on 23/02/21.
//

import Foundation

final class SecondViewPresenter : SecondViewModuleInputProtocol, SecondViewOutputProtocol {
    
    weak var view: SecondViewInputProtocol?
    
    var interactor: SecondViewInteractorInputProtocol!
    
    var router: SecondViewRouterInputProtocol!
    
    func didBackButtonPress() {
        
    }
    
    
}

extension SecondViewPresenter : SecondViewInteractorOutputProtocol {
    func success() {
     
        
        
    }
    
    func failure() {
        
    }
}
