//
//  SecondVCProtocols.swift
//  DispatchGroupTestVIPER
//
//  Created by Jeet Kapadia on 23/02/21.
//

import Foundation

protocol SecondViewInputProtocol : AnyObject {
    
    var presenter : SecondViewOutputProtocol! {get set}
    
    //Add Additional methods here
}

protocol SecondViewModuleInputProtocol {
    
    var view: SecondViewInputProtocol? {get set}
    var interactor: SecondViewInteractorInputProtocol! {get set}
    var router: SecondViewRouterInputProtocol! {get set}
}

protocol SecondViewOutputProtocol : AnyObject {
    
    func didBackButtonPress()
}

protocol SecondViewInteractorInputProtocol : AnyObject {
    
    var presenter : SecondViewInteractorOutputProtocol? {get set}
    //Add additional methods here
}

protocol SecondViewInteractorOutputProtocol : AnyObject {
    
    func success()
    func failure()
}

protocol SecondViewRouterInputProtocol : AnyObject {
    
    func showNextScreen()
}
