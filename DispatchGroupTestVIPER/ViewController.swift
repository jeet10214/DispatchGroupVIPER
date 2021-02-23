//
//  ViewController.swift
//  DispatchGroupTestVIPER
//
//  Created by Jeet Kapadia on 21/02/21.
//

import UIKit

class ViewController: UIViewController, viewInputProtocol {
    
    var presenter: viewOutputProtocol!
    
    var label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = .white
        
        label = UILabel(frame: CGRect(x: self.view.frame.width / 2, y: self.view.frame.height / 2 , width: 100, height: 100))
        label.translatesAutoresizingMaskIntoConstraints = true
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 25)
        label.text = "TEST"
        self.view.addSubview(label)
        
        presenter.userTappedOnButton()
    }

    func displayMessage(_message: String) {
        
        print("here message \(_message)")
        label.text = _message
    }
}

