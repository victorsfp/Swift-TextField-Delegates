//
//  ViewController.swift
//  TextField
//
//  Created by user210273 on 12/15/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //DEFININDO DELEGATE ATRAVES DO OUTLETS E CODIGO
        //NAO ESQUECENDO DE ACRESCENTAR O PROCTOLOCO UITextFieldDelegate
        //NA CLASSE ATUAL
        tfEmail.delegate = self
        tfPassword.delegate = self
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == tfName {
            tfEmail.becomeFirstResponder()
        }else if textField == tfEmail {
            //tfPassword.becomeFirstResponder()
            print("Enviado dados ao servidor!!!")
            //view.endEditing(true)
            //textField.resignFirstResponder()
        }
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return !textField.text!.isEmpty
    }

}

