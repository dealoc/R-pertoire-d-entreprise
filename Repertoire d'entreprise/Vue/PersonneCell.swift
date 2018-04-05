//
//  PersonneCell.swift
//  Repertoire d'entreprise
//
//  Created by Dea-loC on 05/04/2018.
//  Copyright © 2018 Dea-loC. All rights reserved.
//

import UIKit

class PersonneCell: UITableViewCell {

    @IBOutlet weak var photoDeProfil: ImageArrondie!
    @IBOutlet weak var nomEtPrenom: UILabel!
    @IBOutlet weak var numeroDeTel: UILabel!
    @IBOutlet weak var adresseMail: UILabel!
    

    var personne: Personne!
    
    func miseEnPlace(personne: Personne) {
        self.personne = personne
        photoDeProfil.image = self.personne.photo as? UIImage
        var nomComplet = ""
        if let prenom = self.personne.prenom {
            nomComplet += prenom + " "
        }
        if let nom = self.personne.nom {
            nomComplet += nom
        }
        nomEtPrenom.text = nomComplet
        let num = String(self.personne.numero) 
        numeroDeTel.text = num
        adresseMail.text = self.personne.mail ?? ""
        
    }
}
