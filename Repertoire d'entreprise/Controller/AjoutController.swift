//
//  AjoutController.swift
//  Repertoire d'entreprise
//
//  Created by Dea-loC on 04/04/2018.
//  Copyright © 2018 Dea-loC. All rights reserved.
//

import UIKit
import CoreData

class AjoutController: UIViewController {

    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var imageDeProfil: ImageArrondie!
    @IBOutlet weak var ajouterEntreprise: UIButton!
    @IBOutlet weak var prenomTexteField: UITextField!
    @IBOutlet weak var nomTextField: UITextField!
    @IBOutlet weak var telTextField: UITextField!
    @IBOutlet weak var mailTextField: UITextField!
    @IBOutlet weak var ajouterPersonneBouton: BoutonArrondi!
    @IBOutlet weak var largeurContrainte: NSLayoutConstraint!
    @IBOutlet weak var contrainteDuBas: NSLayoutConstraint!
    
    var entreprises = [Entreprise]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        miseEnPlacePicker()
        fetchEntreprise()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        largeurContrainte.constant = view.frame.width
        scroll.contentSize = CGSize(width: largeurContrainte.constant, height: scroll.frame.height)
    }
    
    func fetchEntreprise() {
        
        let requete: NSFetchRequest<Entreprise> = Entreprise.fetchRequest()
        do {
            entreprises = try contexte.fetch(requete)
            pickerView.reloadAllComponents()
        } catch {
            print(error.localizedDescription)
        }
        
    }
    
    @IBAction func ajouterPersonneAction(_ sender: Any) {
    }
    
    @IBAction func ajouterEntrepriseAction(_ sender: Any) {
    }
    
}
