//
//  viewRouter.swift
//  DispatchGroupTestVIPER
//
//  Created by Jeet Kapadia on 21/02/21.
//

import Foundation
import UIKit

final class viewRouter: viewRouterInputerProtocol {
    
    weak var viewController: UIViewController?
    
    func showNextScreen() {
        
        let secondVC = SecondViewBuilder().buildModule()
        viewController?.navigationController?.pushViewController(secondVC, animated: true)
    }
    
}
