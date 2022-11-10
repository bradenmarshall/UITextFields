//
//  ViewController.swift
//  UITextFieldsChallenge
//
//  Created by Bobby Orr
//  Copyright © 2021 MobileMakersEdu. All rights reserved.
//

import UIKit
                                        // MARK: Stretch #4 - Part I
class ViewController: UIViewController, UITextFieldDelegate  {
    
    // MARK: - MVP - Part I
   
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var languageSegmentedController: UISegmentedControl!
    @IBOutlet weak var flagImageView: UIImageView!
    
    var greeting = "Hello"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Stretch #4 - Part II
        enterNameTextField.delegate = self
        
        
    }
    
    // MARK: - MVP - Part II
   
    @IBAction func displayNameWhenPressed(_ sender: Any) {
        greetingLabel.text =  greeting + " " + enterNameTextField.text!
        enterNameTextField.resignFirstResponder()
        enterNameTextField.text = " "
    }
    
    
    // MARK: - Stretch #3
    @IBAction func whenSegmentedControllerClicked(_ sender: UISegmentedControl) {
        switch languageSegmentedController.selectedSegmentIndex {
        case 0:
            greeting = "Hallo"
            flagImageView.image = UIImage( named: "german")
        case 1:
            greeting = "Hola"
            flagImageView.image = UIImage( named: "spanish")
        case 2:
            greeting = "Bonjour"
            flagImageView.image = UIImage( named: "france")
        default:
            greeting = "Hello"
        }
    }
    // MARK: Stretch #4 - Part III
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        greetingLabel.text = "Goodbye " + enterNameTextField.text!
        enterNameTextField.resignFirstResponder()
        return true
    }
    
    
}

