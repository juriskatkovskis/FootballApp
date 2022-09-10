//
//  DetailedGermanyViewController.swift
//  FootballApp
//
//  Created by juris.katkovskis on 10/09/2022.
//

import UIKit

class DetailedGermanyViewController: UIViewController {

    @IBOutlet weak var detailedGermanyImg: UIImageView!
    @IBOutlet weak var detailedGermanyName: UILabel!
   
    
    var item: Datum?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

                detailedGermanyName.text = item?.name
                detailedGermanyImg.sd_setImage(with: URL(string: item?.logo ?? ""))
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
