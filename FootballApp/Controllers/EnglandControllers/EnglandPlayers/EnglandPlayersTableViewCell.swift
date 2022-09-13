//
//  EnglandPlayersTableViewCell.swift
//  FootballApp
//
//  Created by juris.katkovskis on 11/09/2022.
//

import UIKit

class EnglandPlayersTableViewCell: UITableViewCell {

    @IBOutlet weak var englandPlayersLbl: UILabel!
    
    @IBOutlet weak var englandPlayersLastLbl: UILabel!
    
    @IBOutlet weak var englandPlayersAge: UILabel!
    
    
    
    func setupUI(withDataFrom: (Datum)){
        englandPlayersLbl.text = "Name: " + withDataFrom.firstname!
        englandPlayersLastLbl.text = "Lastname: " + withDataFrom.lastname!
       
       
        
    }

}
