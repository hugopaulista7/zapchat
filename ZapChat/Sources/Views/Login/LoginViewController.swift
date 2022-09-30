//
//  ViewController.swift
//  ZapChat
//
//  Created by Hugo Paulista on 28/09/22.
//

import UIKit
import FirebaseCore
import FirebaseAuth
import GoogleSignIn

final class LoginViewController: UIViewController {

    private var customView: LoginView? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        buildView()
        setupSignIn()
    }
    
    private func buildView() {
        view = LoginView()
        
        customView = view as? LoginView
    }
    
    private func setupSignIn() {
        guard let cliendID = FirebaseApp.app()?.options.clientID else { return }
        
        let config = GIDConfiguration(clientID: cliendID)
        
        GIDSignIn.sharedInstance.signIn(with: config, presenting: self) { [unowned self] user, error in
            if let error = error {
                print(error)
                return
            }
            
            guard let authentication = user?.authentication,
                  let idToken = authentication.idToken
            else {
                return
            }
            
            let credential = GoogleAuthProvider.credential(withIDToken: idToken, accessToken: authentication.accessToken)
            
        }
    }
    
    


}

