//
//  ViewController.swift
//  EAT
//
//  Created by Court Middleton on 8/14/20.
//  Copyright © 2020 Court Middleton. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    // MARK: Properties
    @IBOutlet weak var nameTxtField: UITextField!
    @IBOutlet weak var RestaurantName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field’s user input through delegate callbacks.
        nameTxtField.delegate = self
    }

    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField)
    {
        RestaurantName.text = textField.text
    }
    
    //MARK: Actions
    @IBAction func submitRestaurant(_ sender: UIButton) {
        RestaurantName.text = "Default Text"
    }
    
}

