//
//  GermanyPlayersViewController.swift
//  FootballApp
//
//  Created by juris.katkovskis on 11/09/2022.
//

import UIKit

class GermanyPlayersViewController: UIViewController {
    
    var Players: [Datum] = []


    @IBOutlet weak var germanyPlayersTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        GermanyPlayersNetworkManager.fetchData { germanyPlayers in
            self.Players = germanyPlayers
            DispatchQueue.main.async {
            self.germanyPlayersTableView.reloadData()
            }
        }
    }

        // Do any additional setup after loading the view.
    }

extension GermanyPlayersViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Players.count
    }
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GermanyPlayersTableViewCell", for: indexPath) as? GermanyPlayersTableViewCell else {return UITableViewCell()}
        
        
        let item = Players[indexPath.row]
        cell.germanyPlayersLbl.text = item.firstname
        cell.germanyPlayersLastLbl.text = item.lastname!
        cell.germanyPlayersAge.text = String (item.age!)
      
        
        
        
        return cell

        
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


