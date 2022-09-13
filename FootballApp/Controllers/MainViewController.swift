//
//  ViewController.swift
//  FootballApp
//
//  Created by juris.katkovskis on 10/09/2022.
//

import UIKit

class MainViewController: UIViewController {

    
    @IBOutlet weak var countryLabel: UILabel!
    
    @IBOutlet weak var continentLabel: UILabel!
    @IBOutlet weak var continentLabelTwo: UILabel!

    @IBOutlet weak var buttonViewTwo: UIButton!
    @IBOutlet weak var buttonView: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countryLabel.layer.borderColor = UIColor.black.cgColor
        countryLabel.layer.borderWidth = 2.5
        countryLabel.layer.cornerRadius = 15
        
        continentLabel.layer.borderColor = UIColor.black.cgColor
        continentLabel.layer.borderWidth = 1.0
        continentLabel.layer.cornerRadius = 5
        
        continentLabelTwo.layer.borderColor = UIColor.black.cgColor
        continentLabelTwo.layer.borderWidth = 1.0
        continentLabelTwo.layer.cornerRadius = 5
        
        buttonView.layer.borderColor = UIColor.black.cgColor
        buttonView.layer.borderWidth = 3.0
        buttonView.layer.cornerRadius = 15
        
        buttonViewTwo.layer.borderColor = UIColor.black.cgColor
        buttonViewTwo.layer.borderWidth = 3.0
        buttonViewTwo.layer.cornerRadius = 15
        
    }
    
    @IBAction func infoButton(_ sender: Any) {
        
        basicAlert(title: "Info!", message: "Football App: Made by Juris Katkovskis API: Sport Data API")
        
    }
    
}
extension UIViewController {
    func basicAlert(title: String?, message: String?){
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
}


