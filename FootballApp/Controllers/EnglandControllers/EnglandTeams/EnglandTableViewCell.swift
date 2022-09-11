//
//  EnglandTableViewCell.swift
//  FootballApp
//
//  Created by juris.katkovskis on 11/09/2022.
//

import UIKit
import SDWebImage

class EnglandTableViewCell: UITableViewCell {

    @IBOutlet weak var englandTeamLbl: UILabel!
    @IBOutlet weak var englandTeamImg: UIImageView!
    
    
    func setupUI(withDataFrom: (Datum)){
        englandTeamLbl.text = "Name: " + withDataFrom.name!
        self.englandTeamImg.sd_setImage(with:  URL(string: withDataFrom.logo!))
        
}
}
