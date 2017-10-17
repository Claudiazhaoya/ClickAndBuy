//
//  LoginViewController.swift
//  ClickAndBuy
//
//  Created by SHWETHA UMASHANKER on 10/4/17.
//  Copyright © 2017 SHWETHA UMASHANKER. All rights reserved.
//

import Foundation
import UIKit
import FirebaseAuth
import FirebaseAuthUI


typealias FIRUser = FirebaseAuth.User
class LoginViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
 
    @IBAction func LoginButtonTapped(_ sender: UIButton) {
        guard let authUI = FUIAuth.defaultAuthUI()
            else {return}
        
        authUI.delegate = self
        
        
        let authViewController = authUI.authViewController()
        present(authViewController, animated: true)
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
}

extension LoginViewController: FUIAuthDelegate {
    func authUI(_ authUI: FUIAuth, didSignInWith user: FIRUser?, error: Error?) {
        if let error = error {
            assertionFailure("Error signing in: \(error.localizedDescription)")
            return
        }
        print("handle user signup/login")
    }
}
