

// Created on: Sept-2018
// Created by: Amin Zeina
// Created for: ICS3U
// This program will display school names with their team names 
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let schoolLabel: UILabel = UILabel()
    let teamLabel: UILabel = UILabel()
    let MotherTeresaButton : UIButton = UIButton()
    let stJoesButton : UIButton = UIButton()
    let stMarksButton : UIButton = UIButton()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        view.addSubview(schoolLabel)
        schoolLabel.translatesAutoresizingMaskIntoConstraints = false
        schoolLabel.bottomAnchor.constraint(equalTo: view.centerYAnchor, constant: -150).isActive = true
        schoolLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(teamLabel)
        teamLabel.translatesAutoresizingMaskIntoConstraints = false
        teamLabel.bottomAnchor.constraint(equalTo: view.centerYAnchor, constant: -100).isActive = true
        teamLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        MotherTeresaButton.setTitle("Mother Teresa HS", for: UIControlState.normal)
        MotherTeresaButton.setTitleColor(.blue, for: .normal)
        MotherTeresaButton.addTarget(self, action: #selector(showMotherTeresa), for: .touchUpInside)
        view.addSubview(MotherTeresaButton)
        MotherTeresaButton.translatesAutoresizingMaskIntoConstraints = false
        MotherTeresaButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        MotherTeresaButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        
        stJoesButton.setTitle("St. Joe's HS", for: UIControlState.normal)
        stJoesButton.setTitleColor(.blue, for: .normal)
        stJoesButton.addTarget(self, action: #selector(showStJoes), for: .touchUpInside)
        view.addSubview(stJoesButton)
        stJoesButton.translatesAutoresizingMaskIntoConstraints = false
        stJoesButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        stJoesButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        
        stMarksButton.setTitle("St. Mark's HS", for: UIControlState.normal)
        stMarksButton.setTitleColor(.blue, for: .normal)
        stMarksButton.addTarget(self, action: #selector(showStMarks), for: .touchUpInside)
        view.addSubview(stMarksButton)
        stMarksButton.translatesAutoresizingMaskIntoConstraints = false
        stMarksButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        stMarksButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
    }
    
    @objc func showMotherTeresa() {
        
        schoolLabel.text = "Mother Teresa HS"
        teamLabel.text = "Titans"
    }
    
    @objc func showStJoes() {
        
        schoolLabel.text = "St. Joe's HS"
        teamLabel.text = "Jaguars"
    }
    @objc func showStMarks() {
        
        schoolLabel.text = "St. Mark's HS"
        teamLabel.text = "Lions"
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
