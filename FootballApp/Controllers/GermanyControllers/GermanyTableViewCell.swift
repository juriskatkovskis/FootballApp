//
//  GermanyTableViewCell.swift
//  FootballApp
//
//  Created by juris.katkovskis on 10/09/2022.
//

import UIKit
import SDWebImage

class GermanyTableViewCell: UITableViewCell {

   
    @IBOutlet weak var germanyTeamLbl: UILabel!
    @IBOutlet weak var germanyTeamImg: UIImageView!
    
    
    func setupUI(withDataFrom: (Datum)){
        germanyTeamLbl.text = "Name: " + withDataFrom.name!
        self.germanyTeamImg.sd_setImage(with:  URL(string: withDataFrom.logo!))
        
      

}
}
