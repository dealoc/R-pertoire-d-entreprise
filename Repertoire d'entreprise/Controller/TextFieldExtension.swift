//
//  TextFieldExtension.swift
//  Repertoire d'entreprise
//
//  Created by Dea-loC on 04/04/2018.
//  Copyright © 2018 Dea-loC. All rights reserved.
//

import UIKit

extension AjoutController: UITextFieldDelegate {
    
    func miseEnPlaceTextField() {
        prenomTexteField.delegate = self
        nomTextField.delegate = self
        telTextField.delegate = self
        mailTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }
    
    
    
    
}
