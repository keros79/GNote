//
//  LoginViewController.swift
//  GNote
//
//  Created by keros on 29/06/2019.
//  Copyright © 2019 keros. All rights reserved.
//

import Cocoa
import AppAuth

class LoginViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func onGoogleSigninTapped(_ sender: Any) {
        signin();
    }
    
    func signin() {
        let issuer = NSURL(string:"https://accounts.google.com");
        OIDAuthorizationService.discoverConfiguration(forIssuer: issuer! as URL) { (configuration, error) in
            
            print("test");
            
            let clientId = "1020427060293-qj4uus9thucb1fkd86stc27sd9vicv62.apps.googleusercontent.com";
            let redirectURL = NSURL(string:"com.gourmetsoft.Gnote://open");
            let request = OIDAuthorizationRequest.init(configuration: configuration!,
                                                       clientId: clientId,
                                                       scopes: [OIDScopeOpenID, OIDScopeProfile],
                                                       redirectURL: redirectURL! as URL,
                                                       responseType: OIDResponseTypeCode,
                                                       additionalParameters: nil);
            
            let state = OIDAuthState.authState(byPresenting: request,
                                               callback: { (authState, error) in
                                                if(authState!.isAuthorized) {
                                                    print("success");
                                                }
                                                else {
                                                    print("falied");
                                                }
            });
        }
    }
}
