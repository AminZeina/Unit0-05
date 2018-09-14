

// Created on: Sept-2018
// Created by: Amin Zeina
// Created for: ICS3U
// This program will display area after click on button
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let questionLabel : UILabel = UILabel()
    let areaLabel : UILabel = UILabel()
    let perimeterLabel: UILabel = UILabel()
    let answerButton : UIButton = UIButton()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        questionLabel.text = "What is the Area and perimeter of a 5 cm by 3 cm rectangle?"
        view.addSubview(questionLabel)
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        questionLabel.bottomAnchor.constraint(equalTo: view.centerYAnchor, constant: -150).isActive = true
        questionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(areaLabel)
        areaLabel.translatesAutoresizingMaskIntoConstraints = false
        areaLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        areaLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20).isActive = true
        
        view.addSubview(perimeterLabel)
        perimeterLabel.translatesAutoresizingMaskIntoConstraints = false
        perimeterLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        perimeterLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        
        answerButton.setTitle("Answer", for: UIControlState.normal)
        answerButton.setTitleColor(.blue, for: .normal)
        answerButton.addTarget(self, action: #selector(showAnswer), for: .touchUpInside)
        view.addSubview(answerButton)
        answerButton.translatesAutoresizingMaskIntoConstraints = false
        answerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        answerButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -80).isActive = true
    }
    
    @objc func showAnswer() {
        // show Hello, World!
        areaLabel.text = "The area is \(5*3) cm^2"
        perimeterLabel.text = "The perimeter is \(5*2+3*2) cm"
        
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
