//
//  DetailedEngPlayersViewController.swift
//  FootballApp
//
//  Created by juris.katkovskis on 14/09/2022.
//

import UIKit
import WebKit
class DetailedEngPlayersViewController: UIViewController, WKNavigationDelegate {
    
    var germanyItem: Datum?

    
    @IBOutlet weak var EngWebKit: WKWebView!
    
    lazy var firstName = germanyItem?.firstname
  lazy var lastName = germanyItem?.lastname
    lazy var urlString = "https://www.transfermarkt.com/schnellsuche/ergebnis/schnellsuche?query=\(firstName!)+\(lastName!)"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let url = URL(string: urlString) else {return}
        EngWebKit.navigationDelegate = self
        EngWebKit.load(URLRequest(url: url))
    }
       }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


