//
//  LoginController.swift
//  IVAN Assistant
//
//  Created by FelipeConvo on 4/18/18.
//  Copyright © 2018 IvanDrive. All rights reserved.
//

import UIKit

class LoginController: ViewController, LoginView {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()
    }
    
    fileprivate func initUI() {
        initBackground()
        initGoogleSignInButton()
    }
    
    fileprivate func initBackground() {
        let usableBackground = UIView()
        
        usableBackground.backgroundColor = .yellow
        
        view.addSubview(usableBackground)
        
        // Enables Auto Layout
        usableBackground.translatesAutoresizingMaskIntoConstraints = false
        
        usableBackground.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        usableBackground.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        usableBackground.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        usableBackground.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    fileprivate func initGoogleSignInButton() {
        let googleSignInButton = UIButton()
        
        googleSignInButton.backgroundColor = .green
        
        view.addSubview(googleSignInButton)
        
        googleSignInButton.anchorViewCenter(referenceView: view)
        googleSignInButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        googleSignInButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        
        let someButton = UIButton()
        view.addSubview(someButton)
        
        someButton.backgroundColor = .blue
        someButton.anchorViewBelow(referenceView: googleSignInButton)
            .anchorViewCenterX(referenceView: googleSignInButton)
            .anchorViewWidth(referenceView: view, multiplier: 0.8)
            .anchorViewHeight(referenceView: view, multiplier: 0.1)
    }

}
