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
   
    @IBOutlet weak var detailsShareButton: UIButton!
    
    var item: Datum?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

                detailedGermanyName.text = item?.name
                detailedGermanyImg.sd_setImage(with: URL(string: item?.logo ?? ""))
       
    }
    @IBAction func shareButtonPressed(_ sender: Any) {
            let activityVc = UIActivityViewController(activityItems: ["Share this team"], applicationActivities: nil)
            activityVc.popoverPresentationController?.sourceView = self.view
            self.present(activityVc, animated: true, completion: nil)

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
