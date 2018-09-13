
// Created on: 11-Sept-2018
// Created by: Natalie Beshara
// Created for: ICS3U
// This program is the UIKit solution for the name, city and address program with a bottun

// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let helloWorldLabel : UILabel = UILabel()
    let englishButton = UIButton()
    let frenchButton = UIButton()
    let italianButton = UIButton()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        //helloWorldLabel.text = "Hello, World!"
        helloWorldLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(helloWorldLabel)
        helloWorldLabel.translatesAutoresizingMaskIntoConstraints = false
        helloWorldLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        helloWorldLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        
        englishButton.setTitle("English", for: UIControlState.normal)
        englishButton.setTitleColor(.blue, for: .normal)
        englishButton.addTarget(self, action: #selector(englishText), for: .touchUpInside)
        view.addSubview(englishButton)
        englishButton.translatesAutoresizingMaskIntoConstraints = false
        englishButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        englishButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        frenchButton.setTitle("French", for: UIControlState.normal)
        frenchButton.setTitleColor(.blue, for: .normal)
        frenchButton.addTarget(self, action: #selector(frenchText), for: .touchUpInside)
        view.addSubview(frenchButton)
        frenchButton.translatesAutoresizingMaskIntoConstraints = false
        frenchButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        frenchButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        
        italianButton.setTitle("Italian", for: UIControlState.normal)
        italianButton.setTitleColor(.blue, for: .normal)
        italianButton.addTarget(self, action: #selector(italianText), for: .touchUpInside)
        view.addSubview(italianButton)
        italianButton.translatesAutoresizingMaskIntoConstraints = false
        italianButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        italianButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    }
    @objc func englishText() {
        helloWorldLabel.text = "Hello, World!"
        
    }
    @objc func frenchText() {
        helloWorldLabel.text = "Bonjour le monde!"
        
    }
    @objc func italianText() {
        helloWorldLabel.text = "Ciao mondo!"
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
