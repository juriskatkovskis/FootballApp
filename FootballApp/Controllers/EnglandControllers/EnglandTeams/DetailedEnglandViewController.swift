//
//  DetailedEnglandViewController.swift
//  FootballApp
//
//  Created by juris.katkovskis on 11/09/2022.
//

import UIKit
import SDWebImage

class DetailedEnglandViewController: UIViewController {

    @IBOutlet weak var detailedEnglandImg: UIImageView!
 
    @IBOutlet weak var detailedEnglandName: UILabel!
    
@IBOutlet weak var detailsShareButton: UIButton!
    
    var englandItem: Datum?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

                detailedEnglandName.text = englandItem?.name
                detailedEnglandImg.sd_setImage(with: URL(string: englandItem?.logo ?? ""))
       
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
