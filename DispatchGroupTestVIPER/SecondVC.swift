//
//  SecondVC.swift
//  DispatchGroupTestVIPER
//
//  Created by Jeet Kapadia on 23/02/21.
//

import UIKit

class SecondVC: UIViewController, SecondViewInputProtocol {
    var presenter: SecondViewOutputProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    deinit {
        print("deinit of SecondVC called")
    }
}
