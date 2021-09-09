//
//  AuthViewController.swift
//  TestApplication1
//
//  Created by KS54 on 08.09.2021.
//

import UIKit

class AuthViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    
    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var signupView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    
    var pressedButtonFlag = true
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        signupView.isHidden = true
        
    }
    
    @IBAction func loginPressMethod(_ sender: UIButton) {
        if !pressedButtonFlag{
            signupView.isHidden = true
            loginView.isHidden = false
            pressedButtonFlag = true
        }
    }
    @IBAction func signupPressMethod(_ sender: UIButton) {
        if pressedButtonFlag{
            
            signupView.isHidden = false
            loginView.isHidden = true
            pressedButtonFlag = false
        }
    }
    
    @IBAction func hideKeyboard(_ sender: Any) {
        view.endEditing(true)
    }
    
    
}
