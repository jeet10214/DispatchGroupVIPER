//
//  ViewController.swift
//  DispatchGroupTestVIPER
//
//  Created by Jeet Kapadia on 21/02/21.
//

import UIKit

final class ViewController: UIViewController, viewInputProtocol {
    
    var presenter: viewOutputProtocol!
    
    var label = UILabel()
    var hitAPIsButton = UIButton()
    var nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = .white
        
        setLabel()
        setApiCallButton()
        setShowNextScreenButton()
    }
    
    private func setLabel() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 25)
        label.text = "TEST"
        self.view.addSubview(label)
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    private func setApiCallButton() {
        hitAPIsButton.translatesAutoresizingMaskIntoConstraints = false
        hitAPIsButton.setTitle("Tap to call APIS", for: .normal)
        hitAPIsButton.backgroundColor = .yellow
        hitAPIsButton.setTitleColor(UIColor.black, for: .normal)
        hitAPIsButton.addTarget(self, action: #selector(self.callApis), for: .touchUpInside)
        self.view.addSubview(hitAPIsButton)
        hitAPIsButton.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20).isActive = true
        hitAPIsButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:  20).isActive = true
        hitAPIsButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        hitAPIsButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    private func setShowNextScreenButton(){
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        //nextButton = UIButton(frame: CGRect(x: 100, y: 100, width: 50, height: 60))
        nextButton.setTitle("Show Next Screen", for: .normal)
        nextButton.backgroundColor = .blue
        nextButton.setTitleColor(UIColor.black, for: .normal)
        nextButton.addTarget(self, action: #selector(self.showNextScreen), for: .touchUpInside)
        self.view.addSubview(nextButton)
        nextButton.topAnchor.constraint(equalTo: hitAPIsButton.bottomAnchor, constant: 20).isActive = true
        nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:  20).isActive = true
        nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }

    func displayMessage(_message: String) {
        
        print("here message \(_message)")
        label.text = _message
    }
    
    @objc func callApis() {
        presenter.userTappedOnButton()
    }
    
    @objc func showNextScreen() {
        
        presenter.userTappedOnNextButton()
    }
}

