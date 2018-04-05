//
//  NotificationCenterExtension.swift
//  Repertoire d'entreprise
//
//  Created by Dea-loC on 05/04/2018.
//  Copyright © 2018 Dea-loC. All rights reserved.
//

import UIKit

extension AjoutController {
    
    func miseEnPlaceNotification() {
        NotificationCenter.default.addObserver(self, selector: #selector(clavierRentre), name: Notification.Name.UIKeyboardWillHide, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(clavierSort), name: Notification.Name.UIKeyboardWillShow, object: nil)

    }
    
    @objc func clavierRentre(notification: Notification) {
        UIView.animate(withDuration: 0.35) {
            self.contrainteDuBas.constant = 0
        }
    }
    
    @objc func clavierSort(notification: Notification) {
        if let hauteur = (notification.userInfo?[UIKeyboardFrameEndUserInfoKey]as? NSValue)?.cgRectValue.height {
            UIView.animate(withDuration: 0.35) {
                self.contrainteDuBas.constant = -hauteur
            }
        }
    }
}
