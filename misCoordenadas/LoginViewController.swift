//
//  LoginViewController.swift
//  iCoordenadas
//
//  Created by Sergio Vega on 23/6/16.
//  Copyright © 2016 OpenHex S.A. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var passWordText: UITextField!
    
    
    @IBAction func loginButton(sender: AnyObject) {
        
        var error = ""
        
        if passWordText.text == "" {
            error = "Debe ingresar el password para acceder a iCoordenadas"
        } else {
            validatePassword(passWord:String)
        }
        if error != "" {
            var alert = UIAlertController(title: "Error de ingreso", message: error, preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Aceptar", style: .Default, handler: { (action) -> Void in
                self.dismissViewControllerAnimated(true, completion: nil)
            }))
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
