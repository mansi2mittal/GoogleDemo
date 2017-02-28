//
//  ViewController.swift
//  GoogleDemo
//
//  Created by Appinventiv on 28/02/17.
//  Copyright © 2017 Appinventiv. All rights reserved.
//

import UIKit
import Google
import GoogleSignIn

class ViewController: UIViewController , GIDSignInUIDelegate , GIDSignInDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().delegate = self
        
        var error : NSError?
        GGLContext.sharedInstance().configureWithError(&error)
        
        if error != nil {
        
        print(error ?? "Error")
        
        return
        }
       
        let signIn = GIDSignInButton()
        
        self.view.addSubview(signIn)
        
        signIn.center = self.view.center
    }
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        
        print( user.profile.email)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

