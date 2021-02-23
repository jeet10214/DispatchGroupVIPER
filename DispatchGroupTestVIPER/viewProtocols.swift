//
//  viewProtocols.swift
//  DispatchGroupTestVIPER
//
//  Created by Jeet Kapadia on 21/02/21.
//

import Foundation

protocol viewInputProtocol : AnyObject {
    
    var presenter: viewOutputProtocol! {get set}
    
    func displayMessage(_message : String)
}
// ===================================

protocol viewModuleInputProtocol : AnyObject {
    
    var view: viewInputProtocol? {get set}
    var interactor : viewInteractorInputProtocol! {get set}
    var router : viewRouterInputerProtocol! {get set}
}

// ===================================
protocol viewOutputProtocol : AnyObject {
    
    func userTappedOnButton()
}

protocol viewInteractorInputProtocol : AnyObject {
    
    var presenter: viewInteractorOutputProtocol? {get set}
    func callAPIonDispatchGroup()
}

protocol viewInteractorOutputProtocol : AnyObject {
    
    func success()
    func failure()
}

protocol viewRouterInputerProtocol {
    
    func showNextScreen()
}
