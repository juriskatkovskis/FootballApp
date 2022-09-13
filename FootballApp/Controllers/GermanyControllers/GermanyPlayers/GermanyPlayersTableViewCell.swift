//
//  GermanyPlayersTableViewCell.swift
//  FootballApp
//
//  Created by juris.katkovskis on 11/09/2022.
//

import UIKit

class GermanyPlayersTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var germanyPlayersLbl: UILabel!
    
    @IBOutlet weak var germanyPlayersLastLbl: UILabel!
    
    @IBOutlet weak var germanyPlayersAge: UILabel!
    
    
    func setupUI(withDataFrom: (Datum)){
        germanyPlayersLbl.text = "Name: " + withDataFrom.firstname!
        germanyPlayersLastLbl.text = "Lastname: " + withDataFrom.lastname!
       // germanyPlayersAge.String = "Age:" + withDataFrom.age!
      
        //        let imageview = UIImageView(image: yourImage)

        
    }

}
